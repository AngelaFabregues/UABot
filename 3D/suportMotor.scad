// Suport del motor amb ranura per a enganxar cable, tope pel motor, solapa tope per a la goma, ranures per a encaixar femelles
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
            translate([0,0,12]){ // ranura per femella pern M2
                Hexagone(cle=4,h=2);
            }
        }
        translate([12,20,-0.1]){ // forat per un pern M2
            cylinder(20,1.5,1.5,false);
            translate([0,0,12]){ // ranura per femella pern M2
                Hexagone(cle=4,h=2);
            }
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

//============================================================
// OpenSCAD
// Licence : LICENCE PUBLIQUE RIEN À BRANLER
// Licence : do What The Fuck you want to Public License
//============================================================
/*

	Usage:
	use <Hexagones.scad>;
	Pour créer des jeux, des têtes de vis...

*/
//------------------------------------------------------------
// Hexagone
// cle	écart, ex: clé de 12 alors cle=12
// h		hauteur
//------------------------------------------------------------
module Hexagone(cle,h)
{
	angle = 360/6;		// 6 pans
	cote = cle * cot(angle);
	echo(angle, cot(angle), cote);
	echo(acos(.6));

	union()
	{
		rotate([0,0,0])
			cube([cle,cote,h],center=true);
		rotate([0,0,angle])
			cube([cle,cote,h],center=true);
		rotate([0,0,2*angle])
			cube([cle,cote,h],center=true);
	}

// Vérification par un cercle de taille cle
//	#cylinder(r=cle/2,h=2*h,center=true);
//	%circle(r=cote,center=true);
//	#cube([cote,cote,1]);
}

//------------------------------------------------------------
// Fonction cotangente
// Permet d'avoir les bones dimensions
// utiliser $fn n'est pas bon
//------------------------------------------------------------
function cot(x)=1/tan(x);