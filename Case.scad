// Case for NFC reader
// Controls
cover=0;    // How much to cover the SMD LEDs on antenna side
            // Note it is assumed leaded components cut flush
base=0;     // How much extra base (e.g. for mounting off metal)
thick=3;    // Wall thickness

raspox=false;    // Right angle SPOX side cable
header=false;   // 0.1" header rear
spox=false;     // Straight SPOX rear
tamper=false;   // Tamper button fitted
milligrid=false;    // Milli-grid at rear

$fn=100;


module base()
{
    difference()
    {
        hull()
        {
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=1,h=3+base);
        }
        if(milligrid)
        {   // Milli-grid
        }
        if(raspox)
        {   // Right angle SPOX
        }
        if(spox)
        {   // Straight SPOX
        }
        if(header)
        {   // 0.1" Header
        }
        if(tamper)
        {   // Tamper
        }
    }
}

module top()
{
    difference()
    {
        hull()
        {
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5+thick,h=0.8+cover+1.6+4.9+base);
        }
        translate([0,0,0.8+cover])
        hull()
        {
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=1+thick,h=1.6+4.9+base+1);
        }
        for(y=[21-9,21-9-6,21-9-6-6])translate([9-21-1.5/2,y-1.5/2,-1])cube([1.5,1.5,0.8+cover+2]);
    }
    for(t=[9-21,21-9])translate([t,t,0])cylinder(d=3,h=0.8+cover+1.6);
    // SPOX cable
}


base();
translate([50,0,0])top();

