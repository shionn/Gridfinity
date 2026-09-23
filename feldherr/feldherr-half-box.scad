include <../gridfinity_openscad/gridfinity_baseplate.scad>


gap=.5;

w = 275;
p = 175;
h = 50;
gap = 1;
m = 1;

translate([-42*3,-42*2,-h/2+2])
	translate([42/2,42/2,0])
		frame_plain(6,4);

minkowski() {
	difference() {
		cube([w-m*2,p-m*2,h], center = true);
		//translate([(w-2-42*6)/2-gap,(p-2-42*4)/2-gap,2])
		translate([0,0,1])
			cube([42*6+gap*3,42*4+gap*3,h], center = true);
	}
	sphere(m);
}




