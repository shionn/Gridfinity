include <../gridfinity_openscad/gridfinity_modules.scad>



difference() {
	base(2,5,2);
	outils(3);
	//finger_hole(-56,-10,4);
	//finger_hole(-56,24,4);
}


module finger_hole(x,y,h) {
	translate([x,y,7])
		cylinder(h*7,30/2,30/2,2);
}

module base(x,y,z) {
	grid_block(x,y,z, screw_depth = 0, magnet_diameter=0, center = true, box_corner_attachments_only = false);
}

module outils(z) {
	translate([0,0,6])
		linear_extrude(z*7)
			offset(2) 
				import("silver-scissors-mm.svg", center=true);
}
