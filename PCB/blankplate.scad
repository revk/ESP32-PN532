// UK 1 gang blank plate

$fn=120;

module rcube(x,y,z,r=5)
{
 if(r>0)
 {
   linear_extrude(z)
   minkowski()
   {
    translate([r,r])square([x-r*2,y-r*2]);
    circle(r);
   }
 }
 else cube([x,y,z]);
}

module blankplate()
{
    translate([-43,-43,0])  // Centre
	difference()
	{ // UK socket blank plate
		union()
		{
			difference()
			{
				hull()
				{
					translate([2,2,0])rcube(82,82,1,3);
					translate([0,0,7])rcube(86,86,1,5);
				}
				translate([3,3,2])rcube(80,80,10,2);
			}
			for(x=[12.85,73.15])translate([x,43,0.5])cylinder(d1=10,d2=8,h=4.5,$fn=48);
		}
		for(x=[12.85,73.15])translate([x,43,-0.01])
		{
			cylinder(d=4,h=10);
			cylinder(d=7.5,h=1);
			translate([0,0,0.999])cylinder(d1=7.5,d2=0,h=3.275);
		}
	}
}
blankplate();