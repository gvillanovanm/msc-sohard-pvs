## SOHARD-PVS: SOftware & HARDware - Pacemaker Verification System

## Introduction 

SOHARD-PVS is an easy platform to test pacemaker models considering its software behavior and its electrical circuits.

In this repository, we use the automata-based heart and pacemaker models developed by the University of Pennsylvania to represent the software behavior of the pacemaker and the temporization of the cardiac conduction system of the heart. In our pacemaker model was included the circuits of battery, sensing, pacing, leads, and telemetry. In our heart model was added the electrode-tissue interface and the depolarization based on energy transferred to the heart tissue according to the strength-duration curve. 

## Organization of repository 

### project/

Pacemaker and heart models implemented with MATLAB Simulink.

### fpga/

Simulation of simplified automata-based heart model on modelsim software and synthesis of simplified automata-based heart model on DE0-nano-SoC platform.

### kicad/

Printed Circuit Board to couple real pacemaker and FPGA heart model.

## About

This work was developed in the Master's course at the Federal University of Campina Grande - UFCG.

* Embedded and Pervasive Computing Laboratory - [embedded.ufcg.edu.br](embedded.ufcg.edu.br)
* Electrical Engineering Department - DEE - [www.ee.ufcg.edu.br](www.ee.ufcg.edu.br)
* Electrical Engineering and Informatics Center - CEEI
* Federal University of Campina Grande - UFCG - [www.ufcg.edu.br](www.ufcg.edu.br)
