%%
close all;
clear all;
clc;

% ======================================================================= %
% CASE3: resyn A-V; SA normal, but loss of sync between A-V (just VP acts);
% ======================================================================= %

%%
% ======================================================================= %
%
% PACEMAKER MODEL
%
% ======================================================================= %

% ----------------------------------------------------------------------- %
% ON/OFF
% ----------------------------------------------------------------------- %
PM_ON                   = 1;                                % 0:OFF/1:ON
fixed_step              = .00001;

% ----------------------------------------------------------------------- %
% BATTERY
% ----------------------------------------------------------------------- %
E_battery               = 2.8;                              % [V]   
nonc                    = 2.8-2.679;                        % [V]
Rohm                    = 2.800;                            % [Ohms]
w1                      = 10^(4);                           % [Hz]
Cg                      = 1/(Rohm*w1);                      % [F]
Rnohm                   = 4.5;                              % [Ohms]
w2                      = 3.9;                              % [Hz]
Rct                     = ((2.679-2.467)/.050)-Rohm;        % [Ohms]
Cdl                     = 1/(Rnohm*w2);                     % [F]

% old battery model:
% R_battery_internal      = 100;                            % [Ohms]
% ampHourRating           = 1;                              % [hr*A]
% AH1                     = 2;                              % [V]
% AHI_noload              = .01;                            % [hr*A]

% ----------------------------------------------------------------------- %
% TELEMETRY
% ----------------------------------------------------------------------- %
i_telemetry_curDrain    = 60e-6;                            % [A]
R_telemetry             = E_battery/i_telemetry_curDrain;   % [Ohms]

% ----------------------------------------------------------------------- %
% ATRIAL PACING
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    aPulseWidth         = 4;                                % [10-4s] 
    aDoubleVoltEn       = 1;                                % 0=2.5V/1=5V 
else
    % capture:
    aPulseWidth         =  1*100;                           % [10-5s] 
    % failure-to-capture
    %aPulseWidth         = .1*100;                           % [10-5s] 
    aDoubleVoltEn       = 1;                                % 0=2.5V/1=5V 
end
T_aSwitch               = .001;                             % [s]
Cp_a                    = 10;                               % [uF]
Co_a                    = 10;                               % [uF]

% ----------------------------------------------------------------------- %
% ATRIAL SENSING (LPF fc = 1/(2piRC)
% ----------------------------------------------------------------------- %
aSensitivity            = 5;                                % [ < aS < ][mV]

R_aFilterSensing        = 7.95e+3;                          % [Ohms]
C_aFilterSensing        = 1e-6;                             % [F]

R1_aSensingAmplifier    = 1;                                % [Ohms]
R2_aSensingAmplifier    = 10;                               % [Ohms]

R_aPowerAmplifierAmp    = 1000000;                          % [Ohms]
R_aPowerComparatorAmp   = 1000000;                          % [Ohms]

% ----------------------------------------------------------------------- %
% VENTRICLE PACING
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    vPulseWidth             = 4;                                % [10-4s] 
    vDoubleVoltEn           = 1;                                % 0=2.5V/1=5V 
else
    vPulseWidth             = 1*100;                            % [10-4s] 
    vDoubleVoltEn           = 1;                                % 0=2.5V/1=5V 
end
T_vSwitch               = .001;                             % [s]
Cp_v                    = 10;                               % [uF]
Co_v                    = 10;                               % [uF]

% ----------------------------------------------------------------------- %
% VENTRICLE SENSING 
% ----------------------------------------------------------------------- %
vSensitivity            = 5;                                % [ < vS < ][mV]

R_vFilterSensing        = 1.6e+3;                           % [Ohms]
C_vFilterSensing        = 1e-6;                             % [F]

R1_vSensingAmplifier    = 2;                                % [Ohms]
R2_vSensingAmplifier    = 1;                                % [Ohms]

R_vPowerAmplifierAmp    = 1000000;                          % [Ohms]
R_vPowerComparatorAmp   = 1000000;                          % [Ohms]

% ----------------------------------------------------------------------- %
% AUTOMATA MODEL 
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    LRIdef                  = 7500   -1;                        % [10-4s]
    AVIdef                  = 1600   -1;                        % [10-4s] 
    ARPdef                  = 1500   -1;                        % [10-4s]
    VRPdef                  = 2000   -1;                        % [10-4s]
    URIdef                  = 7500   -1;                        % [10-4s] 
    BPM_programmed          = 1/((LRIdef)/10000)*60;            % [BPM]
else
    LRIdef                  = 75000   -1;                        % [10-4s]
    AVIdef                  = 23000   -1;                        % [10-4s] 
    ARPdef                  = 15000   -1;                        % [10-4s]
    VRPdef                  = 20000   -1;                        % [10-4s]
    % https://www.seas.upenn.edu/~lee/09cis480/lec-pm.pdf
    % URI must be longer than TARP (AVI + PVARP), otherwise it has no effect. 
    URIdef                  = AVIdef+VRPdef+1;                  % [10-4s] 
    BPM_programmed          = 1/((LRIdef)/10000)*60;            % [BPM]
end

%%

% ======================================================================= %
%
% HEART MODEL
%
% ======================================================================= %

% ----------------------------------------------------------------------- %
% BPM heart
% ----------------------------------------------------------------------- %
BPM                     = 82;                               % [BPM]

% ----------------------------------------------------------------------- %
% Atrial and Ventricular Zlead (source: [1975][BOOK]Advances in PM Tech..)
% ----------------------------------------------------------------------- %
R_atrialLead            = 50;                               % [Ohms]
Rf_atrialLead           = 80;                               % [Ohms]
CH_atrialLead           = 3;                                % [uF]

R_ventricularLead       = 50;                               % [Ohms]
Rf_ventricularlLead     = 80;                               % [Ohms]
CH_ventricularLead      = 3;                                % [uF]

% ----------------------------------------------------------------------- %
% Atrial and Ventricular Ztissue (source: [1975][BOOK]Advances in PM Tech.)
% ----------------------------------------------------------------------- %
Rt_atrial               = 500;                              % [Ohms]
at_Vrheo                = 1.4;
tc_atrial               = .3*.001;

Rt_ventricle            = 500;                              % [Ohms]
ve_Vrheo                = 1.4;
tc_ventricular          = .3*.001;
                       

% ----------------------------------------------------------------------- %
% EGM select and noise (source: Inrich A=10mV)
% ----------------------------------------------------------------------- %
AEGM_sel                = 0;                                % 0:ISO/1:Dip;
VEGM_sel                = 0;                                % 0:ISO/1:Dip;
noisePower_at           = 2e-10;
noisePower_ven          = 2e-10;                              

% ----------------------------------------------------------------------- %
% SA node (NA1_SA) (def BPM)
% ----------------------------------------------------------------------- %
Terp_sta_SA             = 3200;                             % [10-4s] 
Terp_def_SA             = 3200;                             % [10-4s]  
Terp_min_SA             = 1500;                             % [10-4s]  
Terp_max_SA             = 3000;                             % [10-4s] 
Trrp_sta_SA             = 1200;                             % [10-4s]  
Trrp_def_SA             = 1200;                             % [10-4s]  
Tres_sta_SA             = (1/BPM)*60*10000-(Terp_min_SA+Trrp_sta_SA); % [BPM]
Tres_def_SA             = Tres_sta_SA;                      % [10-4s]

% ----------------------------------------------------------------------- %
% AV path node (PA1_1to3) (the default is 220 for all)
% ----------------------------------------------------------------------- %
Kpath1to3               = 3;
T_min_path_1to3         = 220*Kpath1to3-525;                    % [10-4s]   
T_bac_path_1to3         = 220*Kpath1to3-525;                    % [10-4s]  
T_fwd_path_1to3         = 220*Kpath1to3-525;                    % [10-4s]  

% ----------------------------------------------------------------------- %
% AV path node (PA1_1to7) (the default is 600 for all)
% ----------------------------------------------------------------------- %
Kpath1to7               = 3;
T_min_path_1to7         = 600*Kpath1to7-525;
T_back_path_1to7        = 600*Kpath1to7-525;
T_fwd_path_1to7         = 600*Kpath1to7-525;


% don't touch here
% ----------------------------------------------------------------------- %
% RVA node
% ----------------------------------------------------------------------- %
Krva                    = 1; 
Terp_sta_RVA            = 3200*Krva;                             % [10-4s] 
Terp_def_RVA            = 3200*Krva;                             % [10-4s] 
Trrp_sta_RVA            = 1200;                             % [10-4s] 
Trrp_def_RVA            = 1200;                             % [10-4s] 
Terp_min_RVA            = 1500;                             % [10-4s] 
Terp_max_RVA            = 3000*Krva;                             % [10-4s] 

% ----------------------------------------------------------------------- %
% Bach node (AV)
% ----------------------------------------------------------------------- %
Terp_sta_BA             = 3200;                             % [10-4s] 
Terp_def_BA             = 3200;                             % [10-4s]  
Terp_min_BA             = 1500;                             % [10-4s]  
Terp_max_BA             = 3000;                             % [10-4s] 
Trrp_sta_BA             = 1200;                             % [10-4s]  
Trrp_def_BA             = 1200;                             % [10-4s]  
Tres_sta_BA             = 99999;
Tres_def_BA             = 99999;                            % [10-4s]

% ----------------------------------------------------------------------- %
% AVI node (NA2_AV)
% ----------------------------------------------------------------------- %
Terp_sta_AV             = 3200*4;                             % [10-4s] 
Terp_def_AV             = 3200*4;                             % [10-4s] 
Trrp_sta_AV             = 1200;                             % [10-4s] 
Trrp_def_AV             = 1200;                             % [10-4s] 
Tres_sta_AV             = 99999;                            % [10-4s] 
Tres_def_AV             = 99999;                            % [10-4s] 
Terp_min_AV             = 1500*4;                             % [10-4s] 
Terp_max_AV             = 3000*4;                             % [10-4s] 




























%%
% AVIdef parameter
% With a programmed sensed and paced AV interval (AVI) of 160 and 190 ms, respectively.
% https://thoracickey.com/6-pacemaker-timing-cycles-and-special-features/
