include <Round.scad>
use <blankplate.scad>
use <Round-top.scad>

difference()
{
    rotate(90)blankplate();
    cylinder(r=pcbr+wall,h=base);
}
top(top=2); // to match blankplate
