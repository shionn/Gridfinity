include <../../gridfinity_openscad/gridfinity_modules.scad>

difference() {
    grid_block(1,3,4, center = true, box_corner_attachments_only = false);

    translate([0,0,25+5])
        cube([23,115,50], center = true);
}