// Design for round top to print in resin

include <Round.scad>

module top(base=base,top=top)
{
difference()
{
    hull()
    {
        cylinder(r=pcbr+wall*2-lw,h=base+top,$fn=360);
        translate([0,0,2])cylinder(r=pcbr+wall*2-1,h=base+top-2,$fn=360);
        translate([0,0,lt])cylinder(r=pcbr+wall*2,h=base+top-lt-lb,$fn=360);
    }
    translate([0,0,top])cylinder(r=pcbr+wall,h=base+1,$fn=360);
    hull()
    {
        translate([0,0,top+base])cylinder(r=pcbr+wall+0.5,h=1,$fn=360);
        translate([0,0,top+base-0.5])cylinder(r=pcbr+wall,h=1,$fn=360);
    }
    for(y=[-ledy,0,ledy])translate([ledx,y,1])cylinder(r=ledr,h=top);
}
for(a=[0,120,240])rotate(a+locka)
    translate([0,pcbr+wall,top+base/2+diag])sphere(d=nipple);
}
top();
