
include <../../gridfinity_openscad/gridfinity_cup_modules.scad>

translate([-42-21,0,0])
	basic_cup(4,2,5);

difference() {
	import( "source-simplified.stl");
	translate([0,-40,0])
		cube([200,50,70], center=true);
}
 
