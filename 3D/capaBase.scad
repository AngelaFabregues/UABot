// Capa base amb forats per suggectar la placa control, forats per suggectar els motors, suports de bolles de gir lliure i ranura per a rodes, gravat UABot
module letter(l,s,h) {
	linear_extrude(height = h) {
		text(l, size = s, font = "Veltica", halign = "center", valign = "center", $fn = 16);
	}
}

module suport_bola(x,y,z){
// suport bola de lliure moviment tamany 9.5 mm diametre
    translate([x,y,z]){
        h_base=2;
        h_cilindre=7.5;
        r_cilindre=7.25;
        d_esfera=10.5;
        difference(){
            union(){
        // cube([20,20,h_base], center=true); // base ideal
                translate([0,0,h_base/2+h_cilindre/2]){
                    cylinder(h = h_cilindre, r1 = r_cilindre, r2 = r_cilindre, center = true);
                }
            }
            translate([0,0,h_base/2+h_cilindre/2+1]){
                cube([r_cilindre*2,2.5,h_cilindre+2], center=true);
                    sphere(d=10);
            }
            translate([0,0,h_base/2+d_esfera/2]){
                sphere(d=d_esfera);
            }
        }
    }
}
difference(){
    union(){
        cylinder(h = 2, r1 = 45, r2 = 45, center = true); // capa
        rotate([180,0,0]){
            suport_bola(38,0,0);
            suport_bola(-38,0,0);
        }
    }
    union(){ // ranures per a rodes
        translate([0,40,0]){
            cube([35,10,4], center=true);
        }
        translate([0,-40,0]){
            cube([35,10,4], center=true);
        }
    }
    union(){ // forats per a support motor
        translate([0,26,0]){
            translate([8.5,0,0]){
                cylinder(h = 4, r1 = 1, r2 = 1, center = true);
            }
            translate([-8.5,0,0]){
                cylinder(h = 4, r1 = 1, r2 = 1, center = true);
            }
        }
        translate([0,-26,0]){
            translate([8.5,0,0]){
                cylinder(h = 4, r1 = 1, r2 = 1, center = true);
            }
            translate([-8.5,0,0]){
                cylinder(h = 4, r1 = 1, r2 = 1, center = true);
            }
        }
    }
    union(){ // forats perns M3 per suggectar a capa base
        r=1.75;
        translate([22,32,0]){
            cylinder(h = 4, r1 = r, r2 = r, center = true);
        }
        translate([22,-32,0]){
            cylinder(h = 4, r1 = r, r2 = r, center = true);
        }
        translate([-22,32,0]){
            cylinder(h = 4, r1 = r, r2 = r, center = true);
        }
        translate([-22,-32,0]){
            cylinder(h = 4, r1 = r, r2 = r, center = true); 
        }
    }
    union(){ // lletres UABot
        translate([35,0,0]){
            rotate([0,0,90]){
                letter("UABot",10,2);
            }
        }
        translate([-35,0,0]){
            rotate([0,0,-90]){
                letter("UABot",10,2);
            }
        }
    }
}