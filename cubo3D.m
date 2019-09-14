clear all

%angle_rad = deg2rad(90);

%for t = 0:0.01:angle_rad
    
 clf;

 %angle_rad = deg2rad(90);

 close all
 prompt = 'Introduzca el valor (grados) de la rotacion en x (phi):';
 phiDeg = input(prompt);
 
  prompt = 'Introduzca el valor (grados) de la rotacion en y (theta):';
 thetaDeg = input(prompt);
 
  prompt = 'Introduzca el valor (grados) de la rotacion en z (psi):';
 psiDeg = input(prompt);
 
 phiRad = deg2rad(phiDeg);
 thetaRad = deg2rad(thetaDeg);
 psiRad = deg2rad(psiDeg);
 
 for phiRad = 0:0.01:phiRad %para cada rotacion
    clf;
    for thetaRad = 0:0.01:thetaRad
        clf;
        for psiRad = 0:0.01:psiRad
            clf;
 
 line([-8 8],[0 0],[0 0],'color',[1 0 0],'linewidth',2.5); %establece el eje X en rojo
 line([0 0],[-8 8],[0 0],'color',[0 1 0],'linewidth',2.5); %establece el eje Y en verde
 line([0 0],[0 0],[-8 8],'color',[0 0 1],'linewidth',2.5); %establece el eje Z en azul

 Rx=[1 0 0; 0 cos(phiRad) -sin(phiRad); 0 sin(phiRad) cos(phiRad)];
 Ry=[cos(thetaRad) 0 sin(thetaRad); 0 1 0; -sin(thetaRad) 0 cos(thetaRad)];
 Rz=[cos(psiRad) -sin(psiRad) 0; sin(psiRad) cos(psiRad) 0; 0 0 1];
 
 
 p1=[0 0 0];
 p2=[7 0 0];
 p3=[7 0 4];
 p4=[0 0 4];
 p5=[0 5 0];
 p6=[7 5 0];
 p7=[7 5 4];
 p8=[0 5 4];
 
  view(120,30)
  grid on
 
 line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[1 0 0],'linewidth',2.5);
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[1 0 0],'linewidth',2.5);
 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[1 0 0],'linewidth',2.5);
 line([p4(1) p1(1)],[p4(2) p1(2)],[p4(3) p1(3)],'color',[1 0 0],'linewidth',2.5);
 
 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 1 0],'linewidth',2.5);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 1 0],'linewidth',2.5);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 1 0],'linewidth',2.5);
 line([p8(1) p5(1)],[p8(2) p5(2)],[p8(3) p5(3)],'color',[0 1 0],'linewidth',2.5);
 
 line([p1(1) p5(1)],[p1(2) p5(2)],[p1(3) p5(3)],'color',[0 0 1],'linewidth',2.5);
 line([p4(1) p8(1)],[p4(2) p8(2)],[p4(3) p8(3)],'color',[0 0 1],'linewidth',2.5);
 line([p3(1) p7(1)],[p3(2) p7(2)],[p3(3) p7(3)],'color',[0 0 1],'linewidth',2.5);
 line([p2(1) p6(1)],[p2(2) p6(2)],[p2(3) p6(3)],'color',[0 0 1],'linewidth',2.5);
 
 
% print(p1,p2,p3,p4,p5,p6,p7,p8)

  
 
 
% Rz = [cos(t) -sin(t); sin(t) cos(t)];

 Rt=Rx*Ry*Rz'; 
 
 p1 = Rt*p1';
 p2 = Rt*p2';
 p3 = Rt*p3';
 p4 = Rt*p4';
 p5 = Rt*p5';
 p6 = Rt*p6';
 p7 = Rt*p7';
 p8 = Rt*p8';
 
  line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[1 0 0],'linewidth',2.5);
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[1 0 0],'linewidth',2.5);
 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[1 0 0],'linewidth',2.5);
 line([p4(1) p1(1)],[p4(2) p1(2)],[p4(3) p1(3)],'color',[1 0 0],'linewidth',2.5);
 
 line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 1 0],'linewidth',2.5);
 line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 1 0],'linewidth',2.5);
 line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 1 0],'linewidth',2.5);
 line([p8(1) p5(1)],[p8(2) p5(2)],[p8(3) p5(3)],'color',[0 1 0],'linewidth',2.5);
 
 line([p1(1) p5(1)],[p1(2) p5(2)],[p1(3) p5(3)],'color',[0 0 1],'linewidth',2.5);
 line([p4(1) p8(1)],[p4(2) p8(2)],[p4(3) p8(3)],'color',[0 0 1],'linewidth',2.5);
 line([p3(1) p7(1)],[p3(2) p7(2)],[p3(3) p7(3)],'color',[0 0 1],'linewidth',2.5);
 line([p2(1) p6(1)],[p2(2) p6(2)],[p2(3) p6(3)],'color',[0 0 1],'linewidth',2.5);
 
 
 grid
 
 pause(0.01)
 
        end
    end
 end
