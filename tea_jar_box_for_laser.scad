include <lasercut.scad>; 

thickness = 3.1;
x = ceil(95.25 * 3) + thickness;
y = ceil(95.25 * 2) + thickness;
z = 40;

sides = 5;

lasercutoutBox(thickness = thickness, x=z, y=x, z=y, sides=sides);
