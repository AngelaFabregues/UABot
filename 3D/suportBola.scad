// suport bola de lliure moviment tamany 9.5 mm diametre

h_base=2;
h_cilindre=7.5;
r_cilindre=7.25;
d_esfera=10;
difference(){
    
    union(){
        cube([20,20,h_base], center=true); // base
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