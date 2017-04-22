// Suport del motor amb ranura per a enganxar cable, tope pel motor i solapa tope per a la goma
difference(){
    union(){
        cube([18,24,12]); // volum principal
        translate([17,7,10]){ // solapa tope per a la goma
            cube([10,10,2]);
        }
    }
    union(){ // forats a fer
        union(){ // forat pel motor amb tope
            translate([-1,6,-1]){
                cube([20,12,10]);
                translate([0,1,0]){
                    cube([20,10,11]);
                }
            }
        }
        translate([12,3.5,-0.1]){ // forat per un pern M2
            cylinder(20,1.5,1.5,false);
        }
        translate([12,20,-0.1]){ // forat per un pern M2
            cylinder(20,1.5,1.5,false);
        }
        translate([-1,15.5,8]){ // forat per enganxar cable
            cube([3,1.5,10]); // entrada
            translate([2,-1.5,0]){ // dins
                cube([2,3,20]);
            }
        }
        translate([-1,7,8]){ // forat per enganxar cable
            cube([3,1.5,10]); // entrada
            translate([2,0,0]){  // dins
                cube([2,3,20]);
            }
        }

        
    }
}

