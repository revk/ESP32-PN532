// Design for round base to print in resin

include <Round.scad>
use <Round/Round.scad>

module screw()
{
    translate([0,0,-pcbt-parts])
    {
        translate([0,0,-base])cylinder(d=3.6,h=base);
        hull()
        {
            translate([0,0,-1.5])cylinder(d=7.5,h=2);
            translate([0,0,-2])cylinder(d=3.6,h=1);
        }
    }
}

module base()
{
    difference()
    {
        hull()
        {
            cylinder(r=pcbr+wall-0.5,h=base,$fn=360);
            translate([0,0,1])cylinder(r=pcbr+wall,h=base-2,$fn=360);
        }
        translate([0,0,base-pcbt-parts])cylinder(r=pcbr-3,h=2);
        translate([0,0,base-pcbt])cylinder(r=pcbr+0.2,h=pcbt+1,$fn=360);
        translate([0,0,base+0.001])rotate([0,180,0])
        { // PCB positioned stuff
            R1()translate([-1,-0.8,0])cube([2,1.6,1]);
            R2()translate([-1.5,-1,0])cube([3,2,1]);
            R3()translate([-1,-0.8,0])cube([2,1.6,1]);
            L1()translate([-2,-2,0])cube([4,4,3]);
            L2()translate([-2,-2,0])cube([4,4,3]);
            J3()hull()
            { // 
                translate([conno,connw/2-connh/2,-1])cylinder(d=connh,h=base+2);
                translate([conno,-connw/2+connh/2,-1])cylinder(d=connh,h=base+2);
            }
            S1()screw();
            S2()screw();
        }
        for(a=[0,120,240])rotate(a)
        {
            translate([0,pcbr+wall,base/2])cylinder(d=nipple,h=base);
            for(a=[0:1:locka])rotate(a)hull()
            {
                translate([0,pcbr+wall,base/2-diag*(a>locka-5?locka-5:a)/15])sphere(d=nipple);
                rotate(1)translate([0,pcbr+wall,base/2-diag*((a>locka-6?locka-6:a)+1)/15])sphere(d=nipple);
            }
        }
    }
    translate([0,0,base])rotate([0,180,0])
    { // PCB positioned stuff
        H1(){translate([0,0,-pcbt])cylinder(d=4,h=base);cylinder(d=6,h=base-pcbt);}
        H2(){translate([0,0,-pcbt])cylinder(d=4,h=base);cylinder(d=6,h=base-pcbt);}
    }
}

base();
