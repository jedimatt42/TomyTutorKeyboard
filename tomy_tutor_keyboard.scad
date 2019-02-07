// tomy tutor keyboard frame

zz = 8;
iz = 2;
yy = 136;
iy = 128;
xx = 304;
ix = 298;

difference() {
cube([xx, yy, zz],false);

// cut out pcboard 
translate([(xx-ix)/2, (yy-iy)/2, 1])
cube([ix, iy, iz],false);
    
// 
translate([2+((xx-ix)/2), 2+((yy-iy)/2), 0])
cube([ix-4, iy-4, 3*iz],false);

// cut outline of keyboard keys
translate([(xx-ix)/2, (yy-iy)/2,-1])    
linear_extrude(height=10,center=false)
polygon([[9,24], [41,24], [41,8], [60,8], [60,23], [92,23], [92,4], [202,4], [202,23], 
    [249,23], [282,23], [282,42], [285,42], [285,63], [278,63], [278,82],
    [268,82], [268,101], [257,101], [257,121], [185,121],
    [185,101], [24,101], [24, 83], [31, 83], [31,61], [9,61], [9,44]]);

// remove angled edge 1mm at bottom
translate([-1,yy,0])
rotate([0,90,0])
linear_extrude(height=310,center=false)    
polygon([[0,0],[0,-1],[-8,0]]);
}
