# Double Pendulum
The folder contains two files namely-

### 1. dpend.m
It is a MATLAB file (.m) which comprises of the main code for simulation of a double pendulum. This program takes the input as the angles of each link (ie theta values) and computes the corresponding transformation matrix by calling the function 'tmat.m'. The computation is based on Denavit–Hartenberg parameters to plot the trajectory of the pendulum bob.

### 2. rmat.m
It is a MATLAB function that is essential to compute the transformation matrix based on D-H parameters. It returns the matrix to roboarm.m which is then used to compute the position of end-effector (pendulum bob) and corresponding links.
