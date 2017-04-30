// Capa control amb forats per suggectar a placa base, forats per cables dels motors, forats per suggectar controllador motor
module letter(l,s,h) {
	linear_extrude(height = h) {
		text(l, size = s, font = "Veltica", halign = "center", valign = "center", $fn = 16);
	}
}
difference(){
    cylinder(h = 1, r1 = 45, r2 = 45, center = true); // capa
    union(){ // forats perns M3 per suggectar a capa base
        translate([22,32,0]){
            cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true);
        }
        translate([22,-32,0]){
            cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true);
        }
        translate([-22,32,0]){
            cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true);
        }
        translate([-22,-32,0]){
            cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true); 
        }
    }
    union(){ // forats cables dels motors
        translate([20,23,0]){
            cube(size = [6,3,4], center = true);
        }
        translate([20,-23,0]){
            cube(size = [6,3,4], center = true);
        }
    }
    // no interruptor baix
    union(){ // forats perns M3 per suggectar controlador motor
        translate([10,0,0]){
            translate([0,9,0]){
                cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true);
            }
            translate([0,-9,0]){
                cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true); 
            }
            translate([13,9,0]){
                cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true);
            }
            translate([13,-9,0]){
                cylinder(h = 4, r1 = 1.5, r2 = 1.5, center = true); 
            }
        }
    }

    union(){ // forats per cables 
        translate([-11,-22.5,0]){ // forat cables micro interruptor i alimentació
             cube(size = [12,5,4], center = true);
        }
        translate([-11,22.5,0]){
             cube(size = [12,5,4], center = true);
        }
    }
    union(){ // lletres UABot
        translate([0,35,0]){
            rotate([0,0,180]){
                letter("UABot",10,1);
            }
        }
        translate([0,-35,0]){
            rotate([0,0,0]){
                letter("UABot",10,1);
            }
        }
    }
}
/*// interruptor dalt
translate([10,0,2]){// pilars suggectar controlador motor
    translate([0,-9,0]){
        cylinder(h = 3, r1 = 1.5, r2 = 1.5, center = true); 
    }
    translate([13,9,0]){
        cylinder(h = 3, r1 = 1.5, r2 = 1.5, center = true);
    }
    translate([0,9,0]){
        cylinder(h = 3, r1 = 1.5, r2 = 1.5, center = true); 
    }
    translate([13,-9,0]){
        cylinder(h = 3, r1 = 1.5, r2 = 1.5, center = true);
    }
}*/

//rotate([0,0,135]){ // interruptor dalt
rotate([180,0,-48]){ // interruptor baix
    translate([1,42.5,2]){
        union(){ // support micro interruptor
            difference(){
                translate([0,-3,1]){ // suport
                    cube(size = [12,10,6], center = true);
                }
                translate([0,1,1]){
                    cube(size = [8.5,6,6], center = true); // forat principal
//                    cube(size = [8.3,6,10], center = true); // forat principal
                    translate([0,-5,0.75]){ // forats cables
                        translate([0,0,0]){
                            cube(size = [1.6,15,5], center = true);
                        }
                        translate([-2.5,0,0]){
                            cube(size = [1.6,15,5], center = true);
                        }
                        translate([2.5,0,0]){
                            cube(size = [1.6,15,5], center = true);
                        }
/*                        translate([0,0,2]){
                            translate([0,0,0]){
                                cube(size = [1.4,15,8], center = true);
                            }
                            translate([-2.5,0,0]){
                                cube(size = [1.4,15,8], center = true);
                            }
                            translate([2.5,0,0]){
                                cube(size = [1.4,15,8], center = true);
                            }
                        }
*/
                    }
                }
            }
        }
    }
}