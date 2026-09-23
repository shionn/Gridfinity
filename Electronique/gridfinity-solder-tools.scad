include <../gridfinity_openscad/gridfinity_modules.scad>

gap=.5;


difference() {
  grid_block(4,2,5, screw_depth = 0,center = false, box_corner_attachments_only = false);

	translate([18,-18,35+7]) {
		rotate([-90,0,0]) {
			cylinder(36+gap,(70+gap)/2,(70+gap)/2, $fn=64);
			translate([0,0,36+gap])
				sphere((70+gap)/2, $fn=64);
		}
	}

	translate([80, 7, 7])
		cylinder(40, (49.1+gap)/2, (49.1+gap)/2, $fn=64);
	translate([131,-17, 7])
		cube([12+gap,68.4+gap,40]);
	translate([108, 10, (54.3+gap)/2+7])
		rotate([0,90,0])
			cylinder(10+gap, (54.3+gap)/2, (54.3+gap)/2, $fn=64);
	translate([50, 40, 7])
		cube([78,20,40]);
}


