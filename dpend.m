clear all ; clc;

%% Simulation of Double Pendulum

m1 = 10 ; m2 = 10;
l1 = 10 ; l2 = 10;
%lc1 = 10 ; lc2 = 10; 
g = 10;

 %% Equation of motion
 %%D*qdd + C*qd*qd + phi = tau

 tspan = [0 50];
 q0 = [pi/2, 0, 0, 0];
 [t,Q] = ode45(@ii, tspan, q0);
 
 %% Plot the pendulum 
 
axis([-30 30 -30 30]);
grid on
 
 for i=1:length(t)
   p = [l1*sin(Q(i,1)) ,-l1*cos(Q(i,1))];
   m = [l1*sin(Q(i,1))+l2*sin(Q(i,1)+Q(i,2)) ,-l1*cos(Q(i,1))-l2*cos(Q(i,1)+Q(i,2))];
   rod1 = line([0 p(1,1)],[0 p(1,2)]);
   rod2 = line([p(1,1) m(1,1)],[p(1,2) m(1,2)]);
   cir = viscircles([0 0],0.1);
   cir1 = viscircles([p(1,1) p(1,2)],0.5);
   cir2 = viscircles([m(1,1) m(1,2)],0.5);
   pause(0.01);
   
   if i<length(t)
       delete(rod1);
       delete(rod2);
       delete(cir);
       delete(cir1);
       delete(cir2);
   end
       
end