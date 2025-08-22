include <Round.scad>
use <blankplate.scad>
use <Round-top.scad>

difference()
{
    blankplate();
    cylinder(r=pcbr+wall,h=base);
}
top(top=top+1);
