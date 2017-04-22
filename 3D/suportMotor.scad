// Suport del motor amb ranura per a enganxar cable
difference(){
    cube([16,24,12]); // volum principal
    union(){ // forats a fer
        translate([-1,6,-1]){ // forat pel motor
            cube([18,12,11]);
        }
        translate([10,3.5,-0.1]){ // forat per un pern M2
            cylinder(20,1,1,false);
        }
        translate([10,20,-0.1]){ // forat per un pern M2
            cylinder(20,1,1,false);
        }
        translate([-0.25,15,0]){ // forat per enganxar cable
            cube([3,1,20]); // entrada
            translate([2,0,0]){ // dins
                cube([2,3,20]);
            }
        }
        translate([-0.25,8,0]){ // forat per enganxar cable
            cube([3,1,20]); // entrada
            translate([2,-2,0]){  // dins
                cube([2,3,20]);
            }
        }

        
    }
}

