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
tamper2=false;   // Tamper 2 pin header rear
milligrid=false;    // Milli-grid at rear
screws=false;

// TODO remove
old=true; // V2 board

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
            hull()for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5.2,h=4.9+base); 
            if(base>0)hull()for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,4.9])
            {
                if(base>1)translate([0,0,base-1])cylinder(r=5.2+base-1,h=1);
                cylinder(r=5.2,h=base);
            }
        }
        translate([0,0,-0.1])hull()for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=1,h=3);
        if(milligrid)b(0,0,-0.01,6.65+0.2,6.3+0.2,5+base);
        if(raspox)
        {
            b(0,-8.9-6.6+7.9/2-2,-0.01,12.4+0.2,7.9+0.2,4.92);
            b(0,-8.9-6.6+7.9/2-2-20,-0.01,8,7.9+0.2+40,4.92);
        }
        if(spox)b(0,-8.9-2.38+4.9/2,-0.01,12.4+0.2,4.9+0.2,5+base);
        if(header)b(0,-12-3.62+4.82/2,-0.01,10.72+0.2,4.82+0.2,5+base);
        if(tamper)b(old?12:0,old?-12:12,-0.01,6+0.2,6+0.2,4.6);
        if(tamper2)b(0,12-3.62+4.82/2,-0.01,5.64-0.2,4.82+0.2,5+base);
        if(screws)for(t=[21-9,9-21])translate([t,-t*(old?-1:1),2.9])
        { // Screws in base
            translate([0,0,-1])cylinder(d=3.5,h=3+base+2);
            translate([0,0,-0.01])cylinder(d=7,h=0.5);
            translate([0,0,0.48])cylinder(d1=7,d2=3.5,h=2);
        }
        for(x=[-11,11])hull()
        {
            b(x,21*(old?-1:1),3.901,8+0.2,1,1);
            b(x,22*(old?-1:1),2.9,8+0.2,1,1);
        }
    }
}

module top()
{
    difference()
    {
        hull()
        for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5+thick,h=0.8+cover+1.6+4.9);
        translate([0,0,0.8+cover])
        hull()
        {
            for(x=[21-5,5-21])for(y=[21-5,5-21])translate([x,y,0])cylinder(r=5.2,h=1.6+4.9+1);
        }
        // LEDs
        for(y=[21-9,21-9-6,21-9-6-6])
        {
            b(-12,y,-0.01,1.6,1.4,1);
            b(-12,y,cover+0.8-0.3,4.6,1.8,1);
        }
        if(header)b(0,-12,cover+0.5,4*2.54,2.54,1);
        if(spox||raspox)b(0,-8.9,cover+0.5,10,2.5,1);
        if(tamper)b((old?12:0)-3.25,old?-12:12,cover+0.5,2.5,7.5,1);
        if(tamper)b((old?12:0)+3.25,old?-12:12,cover+0.5,2.5,7.5,1);
        if(tamper2)b(0,12,cover+0.5,2.54*2,2.54,1);
        if(milligrid)b(0,0,cover+0.5,4,4,1);
        if(raspox)b(0,-8.9-6.6+7.9-20,0.8+cover+1+1.6,12.4+0.2,40,5);
    }
    for(t=[9-21,21-9])translate([t,t,0])cylinder(d=3,h=0.8+cover+1.6);
    for(x=[-11,11])hull()
    {
        b(x,21*(old?-1:1),0.8+cover+1.6+3.9,8,1,1);
        b(x,22*(old?-1:1),0.8+cover+1.6+3.9-1,8,1,1);
    }
}


translate([0,0,4.9+base])rotate([180,0,0])base();
translate([45+thick+base,0,0])top();

