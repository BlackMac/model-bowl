include <config.scad>

module bylassen_bowl(radius, borderwidth, bowlradius) {
    difference () {
        union() {
            translate([0,0,borderwidth/2]) cylinder(h=borderwidth, r=radius, center=true);
            sphere(bowlradius);
        }
        sphere(bowlradius-borderwidth*2);
        translate([0,0,(radius/2)*-1]) {
           cylinder(h=radius, r=bowlradius, center=true);
        }
    }
}

bylassen_bowl(radius, borderwidth, bowlradius);