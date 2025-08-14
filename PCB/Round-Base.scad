// Design for round base to print in resin

include <Round.scad-inc>

module screw(x,y)
{
    translate([x,y,-1])cylinder(d=3.6,h=base+2);
    hull()
    {
        translate([x,y,base-pcbt-parts-1])cylinder(d=7.5,h=2);
        translate([x,y,base-pcbt-parts-2])cylinder(d=3.6,h=1);
    }
}

difference()
{
    hull()
    {
        cylinder(r=pcbr+wall-0.5,h=base,$fn=360);
        translate([0,0,1])cylinder(r=pcbr+wall,h=base-2,$fn=360);
    }
    translate([0,0,base-pcbt-parts])cylinder(r=pcbr-2,h=2);
    translate([0,0,base-pcbt])cylinder(r=pcbr+0.2,h=pcbt+1,$fn=360);
    translate([-1,pcbr-3,base-pcbt-1])cube([2,3,2]);
    translate([-indx,indy,base-pcbt-indh])cylinder(r=indr,h=indh+1);
    translate([indx,indy,base-pcbt-indh])cylinder(r=indr,h=indh+1);
    screw(-screwx,0);
    screw(screwx,0);
    hull()
    {
        translate([connx-connw/2+connh/2,conny,-1])cylinder(d=connh,h=base+2);
        translate([connx+connw/2-connh/2,conny,-1])cylinder(d=connh,h=base+2);
    }
    for(a=[0,120,240])rotate(a)
    {
        translate([0,pcbr+wall,base/2])cylinder(d=nipple,h=base);
        for(a=[0:1:20])rotate(a)hull()
        {
            translate([0,pcbr+wall,base/2-diag*(a>15?15:a)/15])sphere(d=nipple);
            rotate(1)translate([0,pcbr+wall,base/2-diag*((a>14?14:a)+1)/15])sphere(d=nipple);
        }
    }
}
translate([0,-supy,1])cylinder(d=supd+2,h=base-pcbt-1);
translate([0,-supy,1])cylinder(d=supd,h=base-1);
