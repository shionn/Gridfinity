include <../gridfinity_openscad/gridfinity_baseplate.scad>


gap=.5;

wx = 6;
wy = 4;
wh = 9;

gap = 1;
m = 1; // minkowski
ground = 1;

w = wx*42+gap*2+m*2+3;
p = wy*42+gap*2+m*2+3;
h = wh*7+4.4-m*2 + ground;


translate([-42*wx/2,-42*wy/2,-h/2+ground+m])
	translate([42/2,42/2,0])
		frame_plain(wx,wy);

minkowski() {
	difference() {
		cube([w-m*2,p-m*2,h], center = true);
		translate([0,0,ground])
			cube([42*wx+gap*4,42*wy+gap*2+m*2,h], center = true);
	}
	sphere(m, $fn=32);
}




