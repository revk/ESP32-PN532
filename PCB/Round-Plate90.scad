include <Round.scad>
use <blankplate.scad>
use <Round-top.scad>

difference()
{
    rotate(90)blankplate();
    cylinder(r=pcbr+wall,h=base);
}
top();
