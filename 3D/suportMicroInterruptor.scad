module suportMicroInterruptor(t,r){
    rotate(r){ // interruptor baix
        translate(t){
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
                            translate([-2.7,0,0]){
                                cube(size = [2,15,5], center = true);
                            }
                            translate([2.7,0,0]){
                                cube(size = [2,15,5], center = true);
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
}
translate([-3,-3,0]){
translate([-11,0.5,0]){
rotate([0,0,-50]){
cube([15,15,2]);
}
}
}
suportMicroInterruptor([0,0,4],[0,0,-50]);
