# Demonstration

This model of the heart in Simulink was built with: case2mod_new.mdl
-it was created using case2mod_new.mat
- there is a reduced model for demonstration
- this model is compatible with hdl_harness codes/ for FPGA-host interface
- need ''library'' simulink SimpleModeling.mdl

HDL generation was done as follows:
- the case2mod_new file opened
- in the Code tab, go to HDL Workflow Advisor
- In each tab of this window, Run All was run (from item 1. to item 3.)
- TODO: Could not generate operation script

NOTE: the complete model can be obtained by running the script/buildmodel.m