include <gridfinity_openscad/gridfinity_modules.scad>

diameter = 36.5;
height = 97;

wall = .8;

difference() {
  grid_block(2,4,6, screw_depth = 0,magnet_diameter = 0, center = true, box_corner_attachments_only = false);
	translate([-42+3,-42*2+3,6]) {
		translate([0,0,0])
			cube([14,128,80]);
		translate([14+wall,0,0])
			cube([14,128,80]);
		translate([(14+wall)*2,0,0])
			cube([14,128,80]);
		translate([(14+wall)*3,0,0])
			cube([14,128,80]);
		translate([0,128+wall,0])
			cube([42-3-wall/2,33,80]);
	}
	translate([42-3,-42*2+3,6]) {
		translate([-17,0,0])
			cube([17,105,80]);
		translate([-42+3+wall/2,128+wall,0])
			cube([42-3-wall/2,33,80]);
		/*translate([-17-8-wall,0,0])
			cube([17,105,80]);*/
/*		translate([-17-8*2-wall*2,0,0])
			cube([8,105,80]);*/
	}
}

// 