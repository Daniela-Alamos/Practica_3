function print (caja,r,g,b)
p1=caja(:,1);
p2=caja(:,2);
p3=caja(:,3);
p4=caja(:,4);

line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[r g b]);
 line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[r g b]);
 line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[r g b]);
 line([p4(1) p1(1)],[p4(2) p1(2)],[p4(3) p1(3)],'color',[r g b]); 
end 