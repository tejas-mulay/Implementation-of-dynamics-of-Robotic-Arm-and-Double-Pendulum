# Robotic Arm
The folder contains two file namely
### 1. roboarm.m
It is a MATLAB file (.m) which comprises of the main code for simulation of a 3 degree of freedom robotic arm. This program takes the input as the angles of each link (ie theta values) and computes the corresponding transformation matrix by calling the function 'tmat.m'.
The computation is based on Denavit–Hartenberg parameters to plot the trajectory of the robotic arm.

### 2. tmat.m
It is a MATLAB function that is essential to compute the transformation matrix based on D-H parameters. It returns the matrix to roboarm.m which is then used to compute the position of end-effector and corresponding links. 
