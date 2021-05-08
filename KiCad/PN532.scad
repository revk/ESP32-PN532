// Case for NFC reader
// Controls
cover=0;    // How much to cover the SMD LEDs on antenna side
            // Note it is assumed leaded components cut flush
base=0;     // How much extra base (e.g. for mounting off metal)
thick=3;    // Wall thickness
led=1;      // LED thickness (depends on make of SMD LED)

raspox=false;    // Right angle SPOX side cable
header=false;   // 0.1" header rear
spox=true;     // Straight SPOX rear
tamper=true;   // Tamper button fitted
tamper2=false;   // Tamper 2 pin header rear
milligrid=true;    // Milli-grid at rear
screws=true;

corner=9;       // PCB corner radius

$fn=100;

module b(cx,cy,z,w,l,h)
{
    translate([cx-w/2,cy-l/2,z])cube([w,l,h]);
}

module base()
{
    difference()
    {
        union()
        {
            hull()for(x=[corner-21,21-corner])for(y=[corner-21,21-corner])translate([x,y,0])cylinder(r=corner+0.2,h=4.9+base); 
            if(base>0)hull()for(x=[-12,12])for(y=[-12,12])translate([x,y,4.9])
            {
                if(base>1)translate([0,0,base-1])cylinder(r=9+thick+base-1,h=1);
                cylinder(r=9+thick,h=base);
            }
        }
        translate([0,0,-0.1])hull()for(x=[-12,12])for(y=[-12,12])translate([x,y,0])cylinder(r=5,h=3);
        b(17,0,-0.1,1,6,3);
        if(milligrid)b(0,0,-0.01,6.3+0.5,6.64+0.5,5+base);
        if(raspox)b(0,-8.9-6.6+7.9/2-2-20,-0.01,12.4+0.2,7.9+0.2+40,4.92);
        if(spox)b(0,-8.9+3.1-4.9/2,-0.01,12.4+0.5,4.9+0.5,5+base);
        if(header)b(0,-12-3.62+4.82/2,-0.01,10.72+0.5,4.82+0.5,5+base);
        if(tamper)b(0,12,-0.01,6+0.2,6+0.2,4.4);
        if(tamper2)b(-7-3.62+4.82/2,12,-0.01,4.82+0.5,5.64+0.5,5+base);
        if(screws)for(t=[-12,12])translate([t,t,2.9])
        { // Screws in base
            translate([0,0,-1])cylinder(d=3.5,h=3+base+2);
            translate([0,0,-0.01])cylinder(d=7,h=0.5);
            translate([0,0,0.48])cylinder(d1=7,d2=3.5,h=2);
        }
        for(x=[-9,9])hull()
        {
            b(x,21,3.901,8+0.2,1,1);
            b(x,22,2.9,8+0.2,1,1);
        }
    }
}

module top()
{
    difference()
    {
        hull()
        for(x=[corner-21,21-corner])for(y=[corner-21,21-corner])translate([x,y,0])cylinder(r=corner+thick,h=led+cover+1.6+4.9);
        translate([0,0,led+cover])
        hull()
        {
            for(x=[corner-21,21-corner])for(y=[corner-21,21-corner])translate([x,y,0])cylinder(r=corner+0.2,h=1.6+4.9+1);
        }
        // LEDs
        for(y=[-12,-6,0])
        {
            b(-12,y,-0.01,1.4,1.6,1);
            b(-12,y,cover+led-0.3,1.8,4.6,1);
        }
        if(header)b(0,-12,cover+0.5,4*2.54,2.54,1);
        if(spox||raspox)b(0,-8.9,cover+0.5,10,2.5,1);
        if(tamper)b(-3.25,12,cover+0.5,2.5,7.5,1);
        if(tamper)b(+3.25,12,cover+0.5,2.5,7.5,1);
        if(tamper2)b(-7,12,cover+0.5,2.54,2.54*2,1);
        if(milligrid)b(0,0,cover+0.5,4,4,1);
        if(raspox)b(0,-8.9-6.6+7.9-20,led+cover+1.6+1,8,40,4); // cable
    }
    for(t=[-12,12])translate([t,-t,0])cylinder(d=3,h=led+cover+1.6);
    for(x=[-9,9])hull()
    {
        b(x,21,led+cover+1.6+3.9,8,1,1);
        b(x,22,led+cover+1.6+3.9-1,8,1,1);
    }
}


translate([0,0,4.9+base])rotate([180,0,0])base();
translate([45+thick+base,0,0])top();

