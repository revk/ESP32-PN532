// Case for NFC reader
// Controls
cover=0;    // How much to cover the SMD LEDs on antenna side
            // Note it is assumed leaded components cut flush
base=0;     // How much extra base (e.g. for mounting off metal)
thick=3;    // Wall thickness

raspox=true;    // Right angle SPOX side cable
header=false;   // 0.1" header rear
spox=false;     // Straight SPOX rear
tamper=true;   // Tamper button fitted
milligrid=false;    // Milli-grid at rear
screws=true;

$fn=100;


module base()
{
    difference()
    {
        hull()for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5.2,h=4.9+base);
        translate([0,0,-0.1])hull()for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=1,h=3);
        if(milligrid)translate([(6.65+0.2)/-2,(6.3+0.2)/-2,0])cube([6.65+0.2,6.3+0.2,5+base]);
        if(raspox)translate([(12.4+0.2)/-2,12.1-21-6.6-20,-0.01])cube([12.4+0.2,7.9+0.2+20,4.92]);
        if(spox)translate([(12.4+0.2)/-2,12.1-21-2.38,-0.01])cube([12.4+0.2,4.9+0.2,5+base]);
        if(header)translate([(2.54*4+0.2)/-2,9-21+(2.54+0.2)/-2,-0.01])cube([2.54*4+0.2,2.54+0.2,5+base]);
//if(tamper)translate([(6+0.2)/-2,21-9+(6+0.2)/-2,-0.01])cube([6+0.2,6+0.2,4]);
        if(tamper)translate([9-21+(6+0.2)/-2,21-9+(6+0.2)/-2,-0.01])cube([6+0.2,6+0.2,4]);
        if(screws)for(t=[21-9,9-21])translate([t,t,2.9]) // -t
        { // Screws in base
            translate([0,0,-1])cylinder(d=3.2,h=3+base+2);
            translate([0,0,-0.01])cylinder(d=5,h=0.5);
            translate([0,0,0.48])cylinder(d1=5,d2=3.2,h=1);
        }
    }
}

module top()
{
    difference()
    {
        union()
        {
            hull()
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5+thick,h=0.8+cover+1.6+4.9);
            if(base>0)
                hull()
                for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0.8+cover+1.6+4.9-0.01])cylinder(r1=5+thick,r2=5+thick+base,h=base);
                }
        translate([0,0,0.8+cover])
        hull()
        {
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5.2,h=1.6+4.9+base+1);
        }
        // LEDs
        for(y=[21-9,21-9-6,21-9-6-6])translate([9-21,y,0])
        {
            translate([-1.6/2,-1.4/2,cover-0.01])cube([1.6,1.4,1]);
            translate([-4.6/2,-1.8/2,cover+0.8-0.3])cube([4.6,1.8,1]);
        }
        translate([-2*2.54,9-21-1.27,cover+0.5])cube([4*2.54,2.54,1]);
        translate([-2*2.54,12.1-21-1.27,cover+0.5])cube([4*2.54,2.54,1]);
        if(raspox)translate([(12.4+0.2)/-2,12.1-21-6.6-20,0.8+cover+1.6])cube([12.4+0.2,20,5]);
    }
    for(t=[9-21,21-9])translate([t,t,0])cylinder(d=3,h=0.8+cover+1.6);

}


translate([0,0,4.9+base])rotate([180,0,0])base();
translate([45+thick+base,0,0])top();

