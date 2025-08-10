// Design for round base to print in resin

pcbr=46/2;
pcbt=1.6;
parts=1.5;
base=6;
wall=2;
nipple=2;
diag=0.5;

$fn=90;

indx=3.25;
indy=12.44;
indr=2.5;
indh=2.5;
screwx=10;

connx=-1.27;
conny=-6.5+.7; // The extra is for ESH connector offset
connh=6;
connw=16;

module screw(x,y)
{
    translate([x,y,-1])cylinder(d=3.6,h=base+2);
    hull()
    {
        translate([x,y,base-pcbt-parts-1])cylinder(d=7,h=2);
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
    translate([-1,pcbr-2,base-pcbt-1])cube([2,2,2]);
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