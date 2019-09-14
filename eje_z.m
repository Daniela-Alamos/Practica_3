close all
clear all
clc

printAxis();

p1 = [0; 0; 0];
ll=8;

theta1_Deg = 30;
theta1_Rad = deg2rad(theta1_Deg); 


TRz= [cos(thetaRad) -sin(thetaRad) 0 0; sin(thetaRad) cos(thetaRad) 0 0; 0 0 1 0; 0 0 0 1];
TTx= [1 0 0 x; 0 1 0 0; 0 0 1 0; 0 0 0 1];


TF=TTx*TRz; %traslada y rota

 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[1 0 0],'linewidth',2.5);

