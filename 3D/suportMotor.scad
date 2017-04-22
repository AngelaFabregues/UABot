// Suport del motor amb ranura per a enganxar cable
difference(){
    cube([18,24,12]); // volum principal
    union(){ // forats a fer
        translate([-1,6,-1]){ // forat pel motor
            cube([20,12,11]);
        }
        translate([12,3.5,-0.1]){ // forat per un pern M2
            cylinder(20,1.5,1.5,false);
        }
        translate([12,20,-0.1]){ // forat per un pern M2
            cylinder(20,1.5,1.5,false);
        }
        translate([-0.25,15,0]){ // forat per enganxar cable
            cube([3,1.5,20]); // entrada
            translate([2,0,0]){ // dins
                cube([2,3,20]);
            }
        }
        translate([-0.25,7.5,0]){ // forat per enganxar cable
            cube([3,1.5,20]); // entrada
            translate([2,-1.5,0]){  // dins
                cube([2,3,20]);
            }
        }

        
    }
}

