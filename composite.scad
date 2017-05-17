include <config.scad>
use <frame.scad>
use <bowl.scad>

bylassen_frame(size, framewidth);
translate([0,0,size+borderwidth]) rotate ([180,0,0]) {
    bylassen_bowl(radius, borderwidth, bowlradius);
}