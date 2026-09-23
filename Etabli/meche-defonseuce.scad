include <../gridfinity_openscad/gridfinity_modules.scad>


translate([200,0,0]) mech_defonseuse();
translate([200,200,0]) pince_rivet();

translate([300,0,0]) disk_papier();

module disk_papier() {
	d = 128;
	h=4;
	difference() {
		base(3,3,h);
		translate([0,0,6]) 
			cylinder(h*7,d/2, d/2);
		
		finger_hole(42,42,h);
		finger_hole(-42,-42,h);
	}
}

module mech_defonseuse() {
	d = 6+0.5;
	espace = 14;
	h = 3;

	difference() {
		base(1,2,h);
		for (x=[-1:1])
			for (y=[-3:2])
				translate([x*espace,y*espace+espace/2,6]) 
					cylinder(h*7, d/2, d/2, $fn=32);
		translate([-1*espace,-3*espace+espace/2,h*7-7]) 
			cylinder(h*7, 10/2, 10/2, $fn=32);
	}
}

module pince_rivet() {
	d = 128;
	h=5;

	difference() {
		base(1,7,h);
		translate([0,0,6+h*3.5]) 
			cube([30,265,h*7],center=true);
		finger_hole(42,42,h);
		finger_hole(-42,-42,h);
	}
}


module base(x,y,z) {
	grid_block(x,y,z, screw_depth = 0, magnet_diameter=0, center = true, box_corner_attachments_only = false);
}

module finger_hole(x,y,h) {
	translate([x,y,6])
		cylinder(h*7,30/2,30/2,2);
}

