// Design for round top to print in resin

pcbr=46/2;
pcbt=1.6;
parts=1.5;
base=6;
wall=2;
nipple=2;
diag=0.5;
top=1;

$fn=180;

difference()
{
    hull()
    {
        cylinder(r=pcbr+wall*2-1,h=base+top,$fn=360);
        translate([0,0,1])cylinder(r=pcbr+wall*2,h=base+top-2,$fn=360);
    }
    translate([0,0,top])cylinder(r=pcbr+wall,h=base+1,$fn=360);
    hull()
    {
        translate([0,0,top+base])cylinder(r=pcbr+wall+0.5,h=1,$fn=360);
        translate([0,0,top+base-0.5])cylinder(r=pcbr+wall,h=1,$fn=360);
    }
}
for(a=[0,120,240])rotate(a)
    translate([0,pcbr+wall,top+base/2+diag])sphere(d=nipple);