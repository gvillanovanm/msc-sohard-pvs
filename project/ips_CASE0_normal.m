%%
close all;
clear all;
clc;

% ======================================================================= %
% CASE0: heart normal, MP not pacing and sensing OK
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
i_telemetry_curDrain    = 1e-6;                             % [A]
R_telemetry             = E_battery/i_telemetry_curDrain;   % [Ohms]

% ----------------------------------------------------------------------- %
% ATRIAL PACING
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    aPulseWidth             = 4;                                % [10-4s] 
    aDoubleVoltEn           = 1;                                % 0=2.5V/1=5V 
else
    aPulseWidth             = (.2)*100;                         % [10-4s] 
    aDoubleVoltEn           = 1;                                % 0=2.5V/1=5V 
end

T_aSwitch               = .001;                             % [s]
Cp_a                    = 10;                               % [uF]
Co_a                    = 10;                               % [uF]
internal_resistance     = .01;

% ----------------------------------------------------------------------- %
% ATRIAL SENSING (LPF fc = 100Hz)
% ATRIAL SENSING (LPF fc = 300Hz)
% ----------------------------------------------------------------------- %
aSensitivity            = 2;                                % [ < aS < ][mV]

R_aFilterSensing        = 100;                               % [Ohms]
C_aFilterSensing        = 16e-6;                             % [F]

R1_aSensingAmplifier    = 1;                                % [Ohms]
R2_aSensingAmplifier    = 10;                               % [Ohms]

R_aPowerAmplifierAmp    = 2800000;                          % [Ohms]
R_aPowerComparatorAmp   = 2800000;                          % [Ohms]

% ----------------------------------------------------------------------- %
% VENTRICLE PACING
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    vPulseWidth         = 4;                                % [10-4s] 
    vDoubleVoltEn       = 1;                                % 0=2.5V/1=5V 
else
%     vPulseWidth         = (.2)*100;                          % [() ms] 
%     vDoubleVoltEn       = 0;                                % 0=2.5V/1=5V 
    vPulseWidth         = (.2)*100;                          % [() ms] 
    vDoubleVoltEn       = 1;                                % 0=2.5V/1=5V 
end

T_vSwitch               = .001;                             % [s]
Cp_v                    = 10;                               % [uF]
Co_v                    = 10;                               % [uF]

% ----------------------------------------------------------------------- %
% VENTRICLE SENSING 
% ----------------------------------------------------------------------- %
vSensitivity            = 2;                                % [ < vS < ][mV]

R_vFilterSensing        = 100;                              % [Ohms]
C_vFilterSensing        = 16e-6;                             % [F]

R1_vSensingAmplifier    = 1;                                % [Ohms]
R2_vSensingAmplifier    = 10;                               % [Ohms]

R_vPowerAmplifierAmp    = 2800000;                          % [Ohms]
R_vPowerComparatorAmp   = 2800000;                          % [Ohms]

% ----------------------------------------------------------------------- %
% AUTOMATA MODEL 
% ----------------------------------------------------------------------- %
if(fixed_step==.0001)
    LRIdef                  = 10000   -1;                       % [10-4s]
    AVIdef                  = 1700   -1;                        % [10-4s] 
    ARPdef                  = 2500   -1;                        % [10-4s]
    VRPdef                  = 2300   -1;                        % [10-4s]
    URIdef                  = 5000   -1;                        % [10-4s] 
    BPM_programmed          = 1/((LRIdef)/10000)*60;            % [BPM]
else
    % BAV 2G:
%     TLRI                  = 62500  -1;                        % [10-4s]
%     TAVI                  = 20000  -1;                        % [10-4s] 

    TLRI                  = 100000  -1;                        % [10-4s]
    TAVI                  = 17000   -1;                        % [10-4s] 
    TARP                  = 25000   -1;                        % [10-4s]
    TVRP                  = 23000   -1;                        % [10-4s]
    
    % https://www.seas.upenn.edu/~lee/09cis480/lec-pm.pdf
    % URI must be longer than TARP (AVI + PVARP), otherwise it has no effect. 
    
    TURI                  = 50000 -1;%AVIdef+VRPdef+1;                  % [10-4s] 
    BPM_programmed          = 1/((TLRI)/100000)*60;            % [BPM]
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
% Normal 
BPM =80;
%BPM                     = 70;

% DSN
% BPM                     = 40;

% BAV primeiro grau
% BPM                     = 70;

% BAV segundo grau 
% BPM                     = 57;                               % [BPM]

% Taquicardia
% BPM                     = 120;                               % [BPM]

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
VEGM_sel                = 1;                                % 0:ISO/1:Dip;
noisePower_at           = 2e-12;
noisePower_ven          = 5e-11;

% Oversensing c2:
% noisePower_at           = 4e-11;
% noisePower_ven          = 2e-11;                             
                        

%% 
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

% -----------------------------------------1------------------------------ %
% AVI node (NA2_AV)
% ----------------------------------------------------------------------- %
Terp_sta_AV             = 3200;                             % [10-4s] 
Terp_def_AV             = 3200;                             % [10-4s] 
Trrp_sta_AV             = 1200;                             % [10-4s] 
Trrp_def_AV             = 1200;                             % [10-4s] 
Tres_sta_AV             = 99999;                            % [10-4s] 
Tres_def_AV             = 99999;                            % [10-4s] 
Terp_min_AV             = 1500;                             % [10-4s] 
Terp_max_AV             = 3000;                             % [10-4s] 


% ----------------------------------------------------------------------- %
% AV path node (PA1_1to3) (the default is 220 for all)
% ----------------------------------------------------------------------- %
Kpath1to3               = 1;
T_min_path_1to3         = 220*Kpath1to3;                    % [10-4s]   
T_bac_path_1to3         = 220*Kpath1to3;                    % [10-4s]  
T_fwd_path_1to3         = 220*Kpath1to3;                    % [10-4s]  


% ----------------------------------------------------------------------- %
% AV path node (PA1_1to7) (the default is 600 for all)
% ----------------------------------------------------------------------- %
Kpath1to7               = 1;
T_min_path_1to7         = 600*Kpath1to7;
T_back_path_1to7        = 600*Kpath1to7;
T_fwd_path_1to7         = 600*Kpath1to7;


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