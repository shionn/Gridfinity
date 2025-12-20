include <../../gridfinity_openscad/gridfinity_modules.scad>

diameter = 36.5;
height = 97;

difference() {
  grid_block(1,1,4, screw_depth = 0,center = true, box_corner_attachments_only = false);

	translate([0,0,height/2+6])
		cylinder(height,diameter/2,diameter/2,true);
}

