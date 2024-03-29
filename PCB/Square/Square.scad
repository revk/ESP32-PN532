// Case for NFC reader
// Controls
cover=0;    // How much to cover the SMD LEDs on antenna side
            // Note it is assumed leaded components cut flush
base=0;     // How much extra base (e.g. for mounting off metal)
thick=3;    // Wall thickness
led=1;      // LED/front thickness

raspox=true;    // Right angle SPOX side cable
spox=true;     // Straight SPOX rear
tamper=true;   // Tamper button fitted
tamperth=false; // Tamper is through hole
bell=true;   // Tamper 2 pin header rear
screws=true;

corner=8;       // PCB corner radius
chamfer=1;     // Case chamfer
size=20;        // PCB size/2
pcb=0.8;        // PCB thickness
slide=1;        // Screw hold slide

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
            hull()for(x=[corner-size,size-corner])for(y=[corner-size,size-corner])translate([x,y,0])cylinder(r=corner+0.2,h=4.9+base); 
            if(base>0)hull()for(x=[-12,12])for(y=[-12,12])translate([x,y,4.9])
            {
                if(base>1)translate([0,0,base-1])cylinder(r=9+thick+base-1,h=1);
                cylinder(r=corner+thick,h=base);
            }
        }
        translate([0,0,-0.1])hull()for(x=[-12,12])for(y=[-12,12])translate([x,y,0])cylinder(r=5,h=3);
        if(raspox)b(0,-8.9-6.6+7.9/2-2-20,-0.01,12.4+0.2,7.9+0.2+40,4.92);
        if(spox)b(0,-8.9+3.1-4.9/2,-0.01,12.4+0.5,4.9+0.5,5+base);
        if(tamper)b(-11.5,0,0,7,7,3.9); // Under 6x6 but SMD so may not be exact placement
        if(bell)b(12,-6,-0.01,4.82+0.4,5.64+0.4,5+base);
        if(screws)for(t=[-12,12])translate([t,-t,2.9])
        { // Screws in base
            hull()for(t=[-slide/2,slide/2])
                translate([t,t,-1])cylinder(d=3.5,h=3+base+2);
            hull()for(t=[-slide/2,slide/2])
                translate([t,t,-0.01])cylinder(d=7,h=base/2+0.5);
            hull()for(t=[-slide/2,slide/2])
                translate([t,t,0.48+base/2])cylinder(d1=7,d2=3.5,h=2);
        }
        for(y=[-9,9])hull()
        { // Clip
            b(-size,y,3.901,1,8+0.2,1);
            b(-size-1,y,2.9,1,8+0.2,1);
        }
        translate([-1,size-5,-0.01])
        cube([2,6,1]); // Resistor to ground on antenna
    }
}

module top()
{
    difference()
    {
        hull()for(x=[corner-size,size-corner])for(y=[corner-size,size-corner])translate([x,y,0])
        {
            translate([0,0,chamfer])
            cylinder(r=corner+thick,h=led+cover+pcb+4.9-chamfer-(base>0?0:chamfer));
            cylinder(r=corner+thick-chamfer,h=led+cover+pcb+4.9);
        }
        translate([0,0,led+cover])
        hull()
        {
            for(x=[corner-size,size-corner])for(y=[corner-size,size-corner])translate([x,y,0])cylinder(r=corner+0.2,h=pcb+4.9+1);
        }
        // LEDs
        for(y=[12,6,0])
        {
            // New reverse LED
            translate([12,y,0.2])cylinder(d=1.4,h=2+led);
            // older surface LED
            *b(12,y,-0.01,1.4,1.6,1);
            *b(12,y,cover+led-0.3,1.8,4.6,1);
        }
        if(spox||raspox)b(0,-8.9,cover+0.7,10,2.5,1);
        if(tamperth)b(-11.5,-3.25,cover+0.5,7.5,2.5,1);
        if(tamperth)b(-11.5,+3.25,cover+0.5,7.5,2.5,1);
        if(bell)b(12,-6,cover+0.5,2.54,2.54*2,1);
        if(raspox)b(0,-8.9-6.6+7.9-20,led+cover+pcb+1,4,40,4); // cable
    }
    for(t=[-12,12])translate([t,-t,0])cylinder(d=3,h=led+cover+pcb);
    for(y=[-9,9])hull()
    { // Clip
        b(-size,y,led+cover+pcb+3.9,1,8,1);
        b(-size-1,y,led+cover+pcb+3.9-1,1,8,1);
    }
}


translate([0,0,4.9+base])rotate([180,0,0])base();
translate([45+thick+base,0,0])top();

