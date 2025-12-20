include <../gridfinity_openscad/gridfinity_modules.scad>

diameter = 4;
diameter_2 = 8.5;
space = 14;
height = 50;

difference() {
  grid_block(2,2,4, screw_depth = 0,center = true, box_corner_attachments_only = false);

	for ( x = [-space*2.5 : space : space*2.5] ){
		for ( y = [-space*2.5 : space : space*2.5] ){
			translate([x,y,height/2+6])
				cylinder(height,diameter/2,diameter/2,true, $fn=16);
			translate([x,y,height/2+6+6])
				cylinder(height,diameter_2/2,diameter_2/2,true, $fn=16);
		}
	}
}

