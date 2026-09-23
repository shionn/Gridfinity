include <../gridfinity_openscad/gridfinity_modules.scad>
include <../gridfinity_openscad/gridfinity_baseplate.scad>



/*

translate([0 ,250,0])  hex_douille_long();
translate([50,250,0]) jig_cone();


translate([  0,320,0]) mech_defonseuse();
translate([ 50,320,0]) torks_adapt_douille();
translate([100,320,0]) hex_douille_meche_cone();
translate([200,320,0]) douille_hex();
translate([300,320,0]) douille_facom_half_inch();
translate([400,320,0]) printer_pump();
translate([500,320,0]) all_meches();

translate([  0,440,0]) douille_roue();
translate([ 50,440,0]) douille_torks_t(); 
translate([100,440,0]) miniclicket_facom(); 
translate([200,440,0]) meche_bois(); 
translate([300,440,0]) flat_jig(); 
translate([420,440,0]) disk_papier(3); 
disk_disqueuse();

translate([  0,600,0]) clicket_bar();
translate([ 50,600,0]) douille_torks_e();
translate([100,600,0]) tournevis_douille();
translate([150,600,0]) rallonge_half_inch_short();
translate([200,600,0]) pointer_white_cray();
translate([300,600,0]) tournevis_frappe();
translate([400,600,0]) equerre_bois();
translate([500,600,0]) meche_bbs();

translate([0,800,0]) undercover_jig(); 
pince_ampere();

translate([0,1050,0]) molly(); 

translate([ 0,1350,0]) pince_rivet();
translate([50,1350,0]) rallonge_half_inch_long();

//*/

allen_key();

module allen_key() {
	z=5;
	difference() {
		base(1,2,z);
		translate([-12,-42+8.5,6]) {	cylinder(z*7,9/2,9/2, $fn=6);
		translate([0,10.5,0]) {			cylinder(z*7,8/2,8/2, $fn=6);
		translate([0,9.5,0]) {			cylinder(z*7,7/2,7/2, $fn=6);
		translate([0,8.5,0]) {			cylinder(z*7,6/2,6/2, $fn=6);
		translate([0,7.5,0]) {			cylinder(z*7,5/2,5/2, $fn=6);
		translate([0,7,0]) {		cylinder(z*7,4.5/2,4.5/2, $fn=6); //3.5
		translate([0,6.5,0]) {			cylinder(z*7,4/2,4/2, $fn=6); //3
		translate([0,6,0]) {		cylinder(z*7,3.5/2,3.5/2, $fn=6); //2.5
		translate([0,5.5,0]) {			cylinder(z*7,3/2,3/2, $fn=6); //2
		translate([0,5,0]) {		cylinder(z*7,2.5/2,2.5/2, $fn=6);
		translate([0,4.5,0]) {			cylinder(z*7,2/2,2/2, $fn=6);
		}}}}}}}}}}}
	}
}

module pince_ampere() {
	z=5;
	difference() {
		base(2,5,z);
		translate([0,0,0])
			rotate([0,0,-90])
				scale(.97)
					insert_tool("black-clamp-meter-mm.svg",z);
		//finger_hole(25,5,z);
	}
}


module disk_disqueuse() {
	d = 115+4;
	z=3;
	difference() {
		base(3,3,z);
		translate([0,0,6]) 
			cylinder(z*7,d/2, d/2);
		
		finger_hole(42,42,z);
		finger_hole(-42,-42,z);
	}
}

module flat_jig() {
	z=4;
	difference() {
		base(2,3,z);
		for (i=[0:7])
			translate([i*9.5-33.25,-42*3/2+4,6])
				rotate([-60,0,0])
					cylinder(42*3, 8/2,8/2,$fn=32);
	}
}

module pointer_white_cray() {
	z=2;
	difference() {
		base(1,4,2);
		translate([11,-42*2+5,z*7])
			rotate([-90,0,0]) {
				cylinder(133,5/2, 5/2, $fn=32);
				cylinder(92, 13.5/2, 13.5/2, $fn=32);
				translate([0,0,92]) 
					cylinder(15,13.5/2,8.5/2, $fn=32);
			}
		translate([-8,42*2-5,z*7])
			rotate([90,0,0]) {
				cylinder(32,20/2, 16/2, $fn=32);
				cylinder(125,16/2, 16/2, $fn=32);
			}
		}
}

module jig_cone() {
	z=4;
	difference() {
		base(1,1,z);
		translate([8,8,6])
			cylinder(z*7, 7/2, 7/2, $fn=32);
		translate([-9,-9,6])
			cylinder(z*7, 11.5/2, 11.5/2, $fn=32);
	}
}

module undercover_jig() {
	z=3;
	difference() {
		base(1,5,z);
		translate([0,-42*5/2+5,z*7])
			rotate([-90,0,0]) {
				cylinder(165, 10.5/2, 10.5/2, $fn=32);
				cylinder(182, 5.2/2, 5.2/2, $fn=32);
				translate([0,0,20])
					cylinder(35, 20/2, 20/2, $fn=32);
			}
		translate([42/2-10, 42*5/2-10, z*7]) {
			cylinder(4,6,6, $fn=32, center=true);
			rotate([90,0,0])
				translate([4,0,0])
					cylinder(55, 4/2, 4/2, $fn=32);
			rotate([0,-90,0])
				translate([0,4,0])
					cylinder(22, 4/2, 4/2, $fn=32);
		}
	}
		
}

module all_meches() {
	z=4;
	difference() {
		base(2,2,z);
	for (i=[0:2]) 
		translate([-42+9,-42+5+16*i,8])
			rotate([-40,0,0]) {
				cylinder(140,11/2,11/2, $fn=32); //10
				translate([11,0,0])
					cylinder(130,10/2,10/2,$fn=32); //9
				translate([21,0,0])
					cylinder(120,9/2,9/2,$fn=32); //8
				translate([30,0,0])
					cylinder(110,8/2,8/2,$fn=32); //7
				translate([38,0,0])
					cylinder(100,7/2,7/2,$fn=32); //6
				translate([45,0,0])
					cylinder(90,6/2,6/2,$fn=32); //5
				translate([51,0,0])
					cylinder(80,5/2,5/2,$fn=32); //4
				translate([56.25,0,0])
					cylinder(75,4.5/2,4.5/2,$fn=32); //3.5
				translate([61,0,0])
					cylinder(70,4/2,4/2,$fn=32); //3
				translate([65.25,0,0])
					cylinder(60,3.5/2,3.5/2,$fn=32); //2.5
				translate([69,0,0])
					cylinder(55,3/2,3/2,$fn=32); //2
		}
/*		translate([-42+4,-42+5,z*7-1])
			linear_extrude(2)
				text("10 9  8 7 6 5",7);
		translate([-42+4,-42+5,z*7-1])
			linear_extrude(2)
				text("4 3",7);*/
	}
}

module printer_pump() {
	z=4;
	d=51.8+1;
	difference() {
		base(2,2,z);
		translate([-10,-10,6])
			cylinder(z*7, d/2, d/2, $fn=64);
		translate([-42+4,19,6])
			cube([42*2-8, 19,z*7]);
		translate([19,-42+4,6])
			cube([19, 54,z*7]);
	}
}

module rallonge_half_inch_long() {
	z=3;
	difference() {
		base(1,7,z);
		translate([0,-42*3,z*7]) 
			rotate([-90,0,0]) {
				cylinder(257,16.5/2, 16.5/2,$fn=32);
				cylinder( 30,23.5/2, 23.5/2,$fn=32);
			}
	}
}

module rallonge_half_inch_short() {
	z=3;
	difference() {
		base(1,4,z);
		translate([0,-42*1.5,z*7]) 
			rotate([-90,0,0]) {
				cylinder(130,16.5/2, 16.5/2,$fn=32);
				cylinder( 30,23.5/2, 23.5/2,$fn=32);
			}
	}
}

module hex_douille_meche_cone() {
	z=3;
	d=8;
	difference() {
		base(1,2,z);
		for (y=[-1:1]) {
			translate([0,y*24,6])
				cylinder(z*7,d/2,d/2,$fn=6);
		}
	}
}


module hex_douille_long() {
	z=8;
	d=8;
	difference() {
		base(1,1,z);
		for (x=[-1:1]) {
			translate([x*13,10,6])
				cylinder(z*7,d/2,d/2,$fn=6);
			translate([x*13,-10,6])
				cylinder(z*7+10,d/2,d/2,$fn=6);
		}
	}
}

module meche_bbs() {
	z=2;
	difference() {
		base(2,4,z);
		rotate([-90,0,0])
			translate([-42+9,-z*7,-42*4/2+3]) {
				cylinder(140,11/2,11/2, $fn=32); //10
				translate([11,0,0])
					cylinder(130,10/2,10/2,$fn=32); //9
				translate([21,0,0])
					cylinder(120,9/2,9/2,$fn=32); //8
				translate([30,0,0])
					cylinder(110,8/2,8/2,$fn=32); //7
				translate([38,0,0])
					cylinder(100,7/2,7/2,$fn=32); //6
				translate([45,0,0])
					cylinder(90,6/2,6/2,$fn=32); //5
				translate([51,0,0])
					cylinder(80,5/2,5/2,$fn=32); //4
				translate([56.25,0,0])
					cylinder(75,4.5/2,4.5/2,$fn=32); //3.5
				translate([61,0,0])
					cylinder(70,4/2,4/2,$fn=32); //3
				translate([65.25,0,0])
					cylinder(60,3.5/2,3.5/2,$fn=32); //2.5
				translate([69,0,0])
					cylinder(55,3/2,3/2,$fn=32); //2
			}
	}
}

module meche_bois() {
	z=2;
	difference() {
		base(2,3,z);
		rotate([-90,0,0])
			translate([-42+9,-z*7,-42*3/2+3]) {
				cylinder(120.5,11/2,11/2, $fn=32); //10
				translate([11,0,0])
					cylinder(120,10/2,10/2,$fn=32); //9
				translate([21,0,0])
					cylinder(115,9/2,9/2,$fn=32); //8
				translate([30,0,0])
					cylinder(115,8/2,8/2,$fn=32); //7
				translate([38,0,0])
					cylinder(95,7/2,7/2,$fn=32); //6
				translate([45,0,0])
					cylinder(90,6/2,6/2,$fn=32); //5
				translate([51,0,0])
					cylinder(85,5/2,5/2,$fn=32); //4
				translate([56.25,0,0])
					cylinder(75,4.5/2,4.5/2,$fn=32); //3.5
				translate([61,0,0])
					cylinder(70,4/2,4/2,$fn=32); //3
				translate([65.25,0,0])
					cylinder(60,3.5/2,3.5/2,$fn=32); //2.5
				translate([69,0,0])
					cylinder(50,3/2,3/2,$fn=32); //2
			}
	}
}


module equerre_bois() {
	z=4;
	difference() {
		base(2,4,z);
		translate([0,0,6+z*7/2]) {
			hull() {
				cube([35,14,z*7], center=true);
				cube([25,130,z*7], center=true);
			}
		}
	}
}

module miniclicket_facom() {
	z=5;
	difference() {
	base(1,3,z);
		translate([0,0,(z*7)/2+6+3]) {
			hull() {
				cube([20,126,z*7],center=true);
				cube([36,119,z*7],center=true);
			}
		}
		translate([0,0,6+3])
			rotate([90,0,0])
				cylinder(109,7/2,7/2, center=true, $fn=16);
	}
}

module douille_facom_half_inch() {
	z=1;
	difference() {
		plate(2,2,z);
	}
	h=16;
	l=12.5;
	translate([-20,-20,7+h/2]) cube([l,l,h], center=true);
	translate([-21,21,7+h/2]) cube([l,l,h], center=true);
	translate([21,0,7+h/2]) cube([l,l,h], center=true);
	translate([21,-28,7+h/2]) cube([l,l,h], center=true);
	translate([21,28,7+h/2]) cube([l,l,h], center=true);
}

module douille_hex() {
	z=3;
	d=8;
	step = 13.5;
	
	difference() {
		base(2,2,z);
		for (x=[-2:3]) {
			for (y=[-2:3]) {
				translate([x*step-step/2,y*step-step/2,z*7-14])
					cylinder(z*7, d/2,d/2, $fn=6);
			}
		}
	}
}

module tournevis_douille() {
	z=3;
	
	difference() {
		base(1,4,z);
		rotate([90,0,0])
			translate([8,z*7,-42*2+3]) {
				cylinder(80,20/2,20/2,$fn=32);
				cylinder(141,7/2,7/2,$fn=32);
				translate([0,0,141-14])
					cylinder(14,9/2,9/2,$fn=32);
			}
		translate([42/4,-42*2+42/4,z*7-13]) 
			cylinder(z*7,8/2,8/2,$fn=6);
		
		translate([-42/4,-42*2+42/4+1,6]) {
			translate([1,0,0]) 
			cylinder(z*7,17/2,17/2,$fn=32);
			translate([0,17,0]) {
				cylinder(z*7,15/2,15/2,$fn=32);
				translate([0,15.5,0]) {
					cylinder(z*7,14/2,14/2,$fn=32);
					translate([0,14,0]) {
						cylinder(z*7,12/2,12/2,$fn=32);
						translate([0,13,0]) {
							cylinder(z*7,12/2,12/2,$fn=32);
							translate([0,13,0]) {
								cylinder(z*7,12/2,12/2,$fn=32);
								translate([0,13,0]) {
									cylinder(z*7,12/2,12/2,$fn=32);
									translate([0,13,0]) {
										cylinder(z*7,12/2,12/2,$fn=32);
										translate([0,13,0]) {
											cylinder(z*7,12/2,12/2,$fn=32);
											translate([0,13,0]) {
												cylinder(z*7,12/2,12/2,$fn=32);
												translate([0,13,0]) {
													cylinder(z*7,12/2,12/2,$fn=32);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}


module tournevis_frappe() {
	z=3;
	difference() {
		base(2,4,z);
		rotate([-90,0,0])
			translate([42/2,-z*7-1,-(118+29)/2]) {
				cylinder(29,24/2,33/2, $fn=32);
				translate([0,0,29])
					cylinder(118-29,33/2,33/2, $fn=32);
				translate([0,0,118]) {
					cylinder(11,23/2,23/2, $fn=32);
					cylinder(29,18/2,18/2, $fn=32);
				}
			}
		translate([-42/2,42/2*3,6])
			cylinder(z*7,23/2,23/2,$fn=32);
		translate([-42,-42*2,6]) {
			d  = 9+1;
			step  = 42/4;
			for (y = [0:5]) 
				for (x = [0:1]) 
					translate([step+step*x*2,step*y*2+step,0])
						cylinder(z*7,d/2,d/2,$fn=6);
		}
	}
}

module torks_adapt_douille() {
	h=2;
	d=9+1;
	difference() {
		base(1,2,h);
		for (y=[0:4]) {
			translate([ 42/4,-42+d+y*d,6])
				cylinder(h*7,d/2,d/2,$fn=6);
			translate([-42/4,-42+d+y*d,6])
				cylinder(h*7,d/2,d/2,$fn=6);
		}
		translate([ 0,28,6])
			cylinder(h*7,19/2,19/2,$fn=32);
	}
}

module douille_torks_t() {
	h=3;
	d = 18+1;
	step = 42*3/7;
	difference() {
		base(1,3,h);
		for (y=[-3:2]) {
			translate([42/4-2,y*step+step/2,6])
				cylinder(h*7,d/2,d/2, $fn=32);
		}
		for (y=[-2:2]) {
			translate([-42/4+2,y*step,6])
				cylinder(h*7,d/2,d/2, $fn=32);
		}
	}
}

module douille_torks_e() {
	h=3;
	d = 18+1;
	step = 42*3/6;
	difference() {
		base(1,4,h);
		for (y=[0:4]) {
			translate([42/4-2,y*step-42*2+13,6])
				cylinder(h*7,d/2,d/2, $fn=32);
		}
		for (y=[0:3]) {
			translate([-42/4+2,y*step-42*2+13+step/2,6])
				cylinder(h*7,d/2,d/2, $fn=32);
		}
		translate([-5,68,6]) {
			cylinder(h*7, 22/2, 22/2, $fn=32);
			translate([0,0,8])
				cylinder(h*7, 25/2, 25/2, $fn=32);
		}
		translate([6.5,46.3,6]) {
			cylinder(h*7, 20/2, 20/2, $fn=32);
			translate([0,0,8])
				cylinder(h*7, 22/2, 22/2, $fn=32);
		}
		translate([-7.5,29,6]) {
			cylinder(h*7, 19/2, 19/2, $fn=32);
			translate([0,0,8])
				cylinder(h*7, 20.5/2, 20.5/2, $fn=32);
		}
	}
}

module clicket_bar() {
	h=4;
	l1 = 126+1;
	d1 = 16+.5;
	
	l2 = 32;
	d2 = 24+.5;
	
	difference() {
		base(1,4,h);
		translate([-d1/2,-l1/2,6])
			cube([d1,l1,h*7]);
		translate([-d2/2,-l1/2,6])
			cube([d2,l2,h*7]);
		finger_hole( 3.5,-15,h);
		finger_hole(-3.5,-15,h);
	}
}

module molly() {
	h=5;
	difference() {
		base(3,6,h);
		translate([-5,5,0])
			insert_tool("molly-mm.svg",h);
		finger_hole(25,5,h);
		translate([42*3/2-30-3,-42*6/2+3,6])
			cube([30,105,h*7]);
	}
}


module douille_roue() {
	h = 4;
	d_17 = 26+.5;
	d_19 = 28+.5;
	d_21 = 30+.5;
	difference() {
		base(1,3,h);
		translate([0,0,6]) {
			cylinder(h*7,d_19/2,d_19/2, $fn=32);
			translate([0,42,0])
				cylinder(h*7,d_17/2,d_17/2, $fn=32);
			translate([0,-42,0])
				cylinder(h*7,d_21/2,d_21/2, $fn=32);
		}
	}
}

module disk_papier(z) {
	d = 128;
	h=z;
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

module plate(x,y, z=1) {
	difference() {
		base(x,y,z);
		translate([0,0,7*z+5])
			cube([x*42+10, y*42+10, 10], center=true);
	}
}


module insert_tool(svg, z) {
	translate([0,0,6])
		linear_extrude(z*7)
			offset(1) 
				import(svg, center=true);
}

module finger_hole(x,y,h) {
	translate([x,y,6])
		cylinder(h*7,30/2,30/2,2);
}

