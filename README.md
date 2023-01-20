## SOHARD-PVS: SOftware & HARDware - Pacemaker Verification System

SOHARD-PVS is a platform that allows for easy testing of pacemaker models. It focuses on both the software behavior and electrical circuits of the pacemaker, and the electrical heart characteristics.

In this repository, the pacemaker and heart models used were developed by the University of Pennsylvania. These models are automata-based and are used to represent the software behavior of the pacemaker and the temporization of the cardiac conduction system of the heart. 

In this work, the pacemaker model includes the following electrical circuits:

* battery;
* sensing;
* pacing;
* leads;
* telemetry.

Additionally, the heart model includes the following features:

* electrode-tissue interface;
* depolarization is based on energy transferred to the heart tissue, according to the strength-duration curve.

This extension allows a closed-loop model (heart and pacemaker) considering software and hardware specifications.

### Organization of repository 

#### project/

Pacemaker and heart models implemented with MATLAB Simulink.

#### fpga/

Simulation of simplified automata-based heart model on modelsim software and synthesis of simplified automata-based heart model on DE0-nano-SoC platform.

#### kicad/

Printed Circuit Board to couple real pacemaker and FPGA heart model.

## About

This work was developed in the Master's course at the Federal University of Campina Grande - UFCG.

* Embedded and Pervasive Computing Laboratory - [embedded.ufcg.edu.br](embedded.ufcg.edu.br)
* Electrical Engineering Department - DEE - [www.ee.ufcg.edu.br](www.ee.ufcg.edu.br)
* Electrical Engineering and Informatics Center - CEEI
* Federal University of Campina Grande - UFCG - [www.ufcg.edu.br](www.ufcg.edu.br)
