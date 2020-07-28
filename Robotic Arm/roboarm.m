q12 = [0,0;0,0;0,10];
q23 = [0,10;0,0;10,10];
q34 = [10,20;0,0;10,10];

%% Position of joints wrt frames
p2 = [0;0;0;1];   
p3 = [10;0;0;1];  
p4 = [10;0;0;1];

%% To input the angles
theta1 = input('Enter the joint angle theta1 : ');
theta2 = input('Enter the joint angle theta2 : ');
theta3 = input('Enter the joint angle theta3 : ');

v1 = linspace(0,theta1,50);
v2 = linspace(0,theta2,50);
v3 = linspace(0,theta3,50);

%% To plot the initial position
r1 = plot3(q12(1,:),q12(2,:),q12(3,:),'Linewidth',3);
grid on;
hold on;
r2 = plot3(q23(1,:),q23(2,:),q23(3,:),'Linewidth',3);
r3 = plot3(q34(1,:),q34(2,:),q34(3,:),'Linewidth',3);


axis([-20 20 -20 20 0 30]);
xlabel('x');
ylabel('y');
zlabel('z');

pause(1);

for i=1:50
    %% Transformation Matrices
    t23 = tmat(0,10,v3(1,i),0);
    t12 = tmat(pi/2,0,v2(1,i),0);
    t01 = tmat(0,0,v1(1,i),10);

    t03 = t01*t12*t23;
    t02 = t01*t12;
    
    p04 = t03*p4;
    p03 = t02*p3;
    p02 = t01*p2;
    
    d1 = [0;  0;0];
    d2 = p02; d2(4,:) = [];
    d3 = p03; d3(4,:) = [];
    d4 = p04; d4(4,:) = [];
    
    q23 = [d2,d3]; q34 = [d3,d4];q12 = [d1,d2];
    
    %% Delete the previous plot
    delete(r1);delete(r2);delete(r3);

    %% Plot the new coordinates
    r1 = plot3(q12(1,:),q12(2,:),q12(3,:),'Linewidth',3);
    r2 = plot3(q23(1,:),q23(2,:),q23(3,:),'Linewidth',3);
    r3 = plot3(q34(1,:),q34(2,:),q34(3,:),'Linewidth',3);
    
    
    %% Time Lapse
    pause(0.5)
    
end


    