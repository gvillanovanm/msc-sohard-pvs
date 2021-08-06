# SOHARD-PVS: SOftware & HARDware - Pacemaker Verification System

# Introduction 

SOHARD-PVS is an easy platform to test pacemaker models considering its software behavior and its electrical circuits.

In this repository, we use the automata-based heart and pacemaker models developed by the University of Pennsylvania to represent the software behavior of the pacemaker and the temporization of the cardiac conduction system of the heart. In our pacemaker model was included the circuits of battery, sensing, pacing, leads, and telemetry. In our heart model was added the electrode-tissue interface and the depolarization based on energy transferred to the heart tissue according to the strength-duration curve. 

# Orgazation of repository 

## project/

Pacemaker and heart models implemented with MATLAB Simulink.

## fpga/

Simulation of simplified automata-based heart model on modelsim software and synthesis of simplified automata-based heart model on DE0-nano-SoC platform.

## kicad/

Printed Circuit Board to couple real pacemaker and FPGA heart model.
