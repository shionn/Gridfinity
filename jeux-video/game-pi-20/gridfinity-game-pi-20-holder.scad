include <../../gridfinity_openscad/gridfinity_modules.scad>

difference() {
    grid_block(1,3,4, screw_depth = 0,center = true, box_corner_attachments_only = false);

    translate([0,0,25+6])
        cube([23,110,50], center = true);
}