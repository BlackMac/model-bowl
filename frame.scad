include <config.scad>

module bylassen_frame(size, framewidth, candle = false) {
    radius = size/2;
    translate([radius*-1,radius*-1,0]) {
        difference () {
            cube(size);
            translate([framewidth,framewidth,-1]) {
                cube([size-framewidth*2, size-framewidth*2, size+2]);
            }
            translate([framewidth,-1,framewidth]) {
                cube([size-framewidth*2, size+2, size-framewidth*2]);
            }
            translate([-1, framewidth,framewidth]) {
                cube([size+2, size-framewidth*2, size-framewidth*2]);
            }
            if (candle) {
                translate([-1, framewidth,-1]) {
                    cube([size+2, size-framewidth*2, size-framewidth*2]);
                }
            }
        }
    }
}
bylassen_frame(size, framewidth);