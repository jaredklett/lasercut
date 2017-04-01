include <lasercut.scad>;

thickness = 3.1;

x = 393; // ~15.5 inches
y = 203; // ~8 inches
z = 25; // ~1 inch
r = thickness * 2;

sides = 5;

// Main piece
lasercutoutSquare(thickness=thickness, x=x, y=y, 
        finger_joints=[
                [UP, 1, 4],
                [DOWN, 1, 4],
                [LEFT, 1, 4],
                [RIGHT, 1, 4]
            ]
);

// Top/bottom sides
translate([0,y+20,thickness]) rotate([90,0,0]) 
lasercutoutSquare(thickness=thickness, x=x, y=z, 
        finger_joints=[
                [LEFT, 1, 4],
                [RIGHT, 1, 4],
                [DOWN, 1, 4]
            ]
);

translate([x,-20,thickness]) rotate([90,0,180]) 
lasercutoutSquare(thickness=thickness, x=x, y=z, 
        finger_joints=[
                [LEFT, 1, 4],
                [RIGHT, 1, 4],
                [DOWN, 1, 4]
            ]
);

// Left/right sides
translate([-20,0,thickness + z]) rotate([0,90,0]) 
lasercutoutSquare(thickness=thickness, x=z, y=y, 
        finger_joints=[
                [UP, 1, 4],
                [LEFT, 1, 4],
                [RIGHT, 1, 4],
                [DOWN, 1, 4]
            ]
);

translate([x+20,y,thickness + z]) rotate([0,90,180]) 
lasercutoutSquare(thickness=thickness, x=z, y=y, 
        finger_joints=[
                [UP, 1, 4],
                [LEFT, 1, 4],
                [RIGHT, 1, 4],
                [DOWN, 1, 4]
            ]
);

// Attachment pieces
translate([-60,0,thickness + z]) rotate([0,0,0]) 
lasercutoutSquare(thickness=thickness, x=z, y=y, 
        finger_joints=[
                [RIGHT, 1, 4]
            ],
        circles_remove = [
            [1.5, z/2, y*3/4], // Screw-hole
            [1.5, z/2, y*1/2], // Screw-hole
            [1.5, z/2, y*1/4], // Screw-hole
        ]
);

translate([x + 60,y,thickness + z]) rotate([180,180,0]) 
lasercutoutSquare(thickness=thickness, x=z, y=y, 
        finger_joints=[
                [RIGHT, 1, 4]
            ],
        circles_remove = [
            [1.5, z/2, y*3/4], // Screw-hole
            [1.5, z/2, y*1/2], // Screw-hole
            [1.5, z/2, y*1/4], // Screw-hole
        ]
);