include <../../gridfinity_openscad/gridfinity_modules.scad>

diameter = 37;
height = 97;

difference() {
  grid_block(2,2,3, screw_depth = 0,center = true, box_corner_attachments_only = false);

	for ( x = [-42/2 : 42 : 42/2] ){
		for ( y = [-42/2 : 42 : 42/2] ){
			translate([x,y,height/2+3])
				cylinder(height,diameter/2,diameter/2,true);
			translate([x,y,0])
				cylinder(5,25.5/2,25.5/2,true);
		}
	}
}

