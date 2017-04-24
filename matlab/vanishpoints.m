function [v, w] = vanishpoints(corners)
p1 = [corners(:,1);1];
p2 = [corners(:,2);1];
p3 = [corners(:,3);1];
p4 = [corners(:,4);1];

p1p4 = cross(p1,p4);
p2p3 = cross(p2,p3);
p2p1 = cross(p2,p1);
p3p4 = cross(p3,p4);

v = cross(p2p1,p3p4);
w = cross(p2p3,p1p4);

v = [v(1) / v(3); v(2) / v(3)];
w = [w(1) / w(3); w(2) / w(3)];

for i = 1:4
    line([v(1);corners(1,i)],[v(2);corners(2,i)]);
    line([w(1);corners(1,i)],[w(2);corners(2,i)]);

end