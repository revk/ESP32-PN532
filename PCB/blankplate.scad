// UK 1 gang blank plate
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
					translate([2,2,0])cube([82,82,1]);
					translate([0,0,7])cube([86,86,1]);
				}
				translate([3,3,2])cube([80,80,10]);
			}
			for(x=[12.85,73.15])translate([x,43,0.5])cylinder(d1=10,d2=8,h=4.5,$fn=48);
		}
		for(x=[12.85,73.15])translate([x,43,-0.01])
		{
			cylinder(d=4,h=10,$fn=48);
			cylinder(d=7.5,h=1,$fn=48);
			translate([0,0,0.999])cylinder(d1=7.5,d2=0,h=3.275,$fn=48);
		}
	}
}
blankplate();