include <../gridfinity_openscad/gridfinity_modules.scad>

difference() {
	grid_block(2,4,1, screw_depth = 0,magnet_diameter=0,center = true, box_corner_attachments_only = false);
	translate([0,0,17])
		cube([42*7, 42*7, 20], center=true);
	translate([-42+7,-42*2+7,6.5])
		rotate([0,0,90])
			linear_extrude(1)
				text("Morgan",halign="left", valign="top");
}


translate([0,0,7])
	minkowski() {
		cylinder(8,13,13, $fn=128);
		sphere(2, $fn=64);
	}
	 
