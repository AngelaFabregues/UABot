// Capa control amb forats per suggectar a placa base, forats per cables dels motors, forats per suggectar controllador motor
difference(){
cylinder(h = 2, r1 = 45, r2 = 45, center = true); // capa
    union(){ // forats perns M3 per suggectar a capa base
        translate([22,32,0]){
            cylinder(h = 4, r1 = 2, r2 = 2, center = true);
        }
        translate([22,-32,0]){
            cylinder(h = 4, r1 = 2, r2 = 2, center = true);
        }
        translate([-22,32,0]){
            cylinder(h = 4, r1 = 2, r2 = 2, center = true);
        }
        translate([-22,-32,0]){
            cylinder(h = 4, r1 = 2, r2 = 2, center = true); 
        }
    }
    union(){ // forats cables dels motors
        translate([0,23,0]){
//            cube(size = [7,4,4], center = true);
            cube(size = [5.5,2.5,4], center = true);
        }
        translate([0,-23,0]){
//            cube(size = [6,3,4], center = true);
            cube(size = [5.5,2.5,4], center = true);
        }
    }
    union(){ // forats perns M3 per suggectar controlador motor
        translate([10,0,0]){
            translate([0,9,0]){
                cylinder(h = 4, r1 = 2, r2 = 2, center = true);
            }
            translate([0,-9,0]){
                cylinder(h = 4, r1 = 2, r2 = 2, center = true); 
            }
            translate([13,9,0]){
                cylinder(h = 4, r1 = 2, r2 = 2, center = true);
            }
            translate([13,-9,0]){
                cylinder(h = 4, r1 = 2, r2 = 2, center = true); 
            }
        }
    }
}