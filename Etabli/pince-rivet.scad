include <../gridfinity_openscad/gridfinity_modules.scad>

d = 128;
h=5;

difference() {
	base(1,7,h);
	translate([0,0,6+h*3.5]) 
		cube([30,265,h*7],center=true);
	finger_hole(42,42,h);
	finger_hole(-42,-42,h);
}

		


module base(x,y,z) {
	grid_block(x,y,z, screw_depth = 0, magnet_diameter=0, center = true, box_corner_attachments_only = false);
}

module finger_hole(x,y,h) {
	translate([x,y,6])
		cylinder(h*7,30/2,30/2,2);
}

