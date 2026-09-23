include <../gridfinity_openscad/gridfinity_modules.scad>

w = 125.3 + .5;
h = 70.1 + .5;
r = 5;

difference() {
	grid_block(2,3,5, screw_depth = 0,magnet_diameter=0,center = true, box_corner_attachments_only = false);
	translate([0,0,8])
		minkowski() {
			cube([h-r*2,w-r*2,2], center = true);
			cylinder(40,r,r, $fn=32);
		}
}




