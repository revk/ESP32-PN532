// Generated case design for Round/Round.kicad_pcb
// By https://github.com/revk/PCBCase
// Generated 2025-11-09 16:26:54
// title:	PN532 NFC reader (HSU)
// date:	${DATE}
// rev:	7
// company:	Adrian Kennard Andrews & Arnold Ltd
// comment:	www.m.euk
//

// Globals
margin=0.200000;
lip=3.000000;
lipa=0;
lipt=2;
casewall=3.000000;
casebottom=5.000000;
casetop=5.000000;
bottomthickness=0.000000;
topthickness=0.000000;
fit=0.000000;
snap=0.150000;
edge=2.000000;
pcbthickness=0.800000;
function pcbthickness()=0.800000;
nohull=false;
hullcap=1.000000;
hulledge=1.000000;
useredge=false;
datex=0.000000;
datey=0.000000;
datet=0.500000;
dateh=3.000000;
datea=0;
date="2025-09-04";
datef="OCRB";
logox=0.000000;
logoy=0.000000;
logot=0.500000;
logoh=10.000000;
logoa=0;
logo="A";
logof="AJK";
spacing=86.000000;
pcbwidth=70.000000;
function pcbwidth()=70.000000;
pcblength=70.000000;
function pcblength()=70.000000;
originx=100.000000;
originy=100.000000;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[-3.125001,-24.803919],[-2.812290,-24.793986],[-2.517954,-24.687906],[-2.270804,-24.496063],[-2.095033,-24.237237],[-2.007847,-23.936762],[-2.017779,-23.624051],[-2.123858,-23.329715],[-2.315700,-23.082564],[-2.574526,-22.906792],[-2.875001,-22.819605],[-4.179334,-22.617099],[-5.469902,-22.340102],[-6.742454,-21.989527],[-7.992800,-21.566528],[-9.216821,-21.072499],[-10.410486,-20.509066],[-11.569863,-19.878085],[-12.691135,-19.181634],[-13.770607,-18.422008],[-14.804725,-17.601708],[-15.790083,-16.723435],[-16.723435,-15.790083],[-17.601708,-14.804725],[-18.422008,-13.770607],[-19.181634,-12.691135],[-19.878085,-11.569863],[-20.509066,-10.410486],[-21.072499,-9.216821],[-21.566528,-7.992800],[-21.989527,-6.742454],[-22.340102,-5.469902],[-22.617099,-4.179334],[-22.819605,-2.875001],[-22.906792,-2.574526],[-23.082564,-2.315699],[-23.329714,-2.123857],[-23.624051,-2.017777],[-23.936762,-2.007845],[-24.237237,-2.095032],[-24.496064,-2.270803],[-24.687907,-2.517953],[-24.793986,-2.812290],[-24.803919,-3.125001],[-24.571868,-4.606877],[-24.251367,-6.072170],[-23.843568,-7.515605],[-23.349939,-8.931986],[-22.772258,-10.316214],[-22.112605,-11.663308],[-21.373352,-12.968417],[-20.557163,-14.226844],[-19.666974,-15.434059],[-18.705990,-16.585716],[-17.677670,-17.677670],[-16.585716,-18.705990],[-15.434059,-19.666974],[-14.226844,-20.557163],[-12.968417,-21.373352],[-11.663308,-22.112605],[-10.316214,-22.772258],[-8.931986,-23.349939],[-7.515605,-23.843568],[-6.072170,-24.251367],[-4.606877,-24.571868],[3.125001,-24.803919],[4.606877,-24.571868],[6.072170,-24.251367],[7.515605,-23.843568],[8.931986,-23.349939],[10.316214,-22.772258],[11.663308,-22.112605],[12.968417,-21.373352],[14.226844,-20.557163],[15.434059,-19.666974],[16.585716,-18.705990],[17.677670,-17.677670],[18.705990,-16.585716],[19.666974,-15.434059],[20.557163,-14.226844],[21.373352,-12.968417],[22.112605,-11.663308],[22.772258,-10.316214],[23.349939,-8.931986],[23.843568,-7.515605],[24.251367,-6.072170],[24.571868,-4.606877],[24.803919,-3.125001],[24.793985,-2.812291],[24.687905,-2.517955],[24.496063,-2.270805],[24.237236,-2.095034],[23.936762,-2.007848],[23.624051,-2.017780],[23.329715,-2.123859],[23.082564,-2.315701],[22.906793,-2.574527],[22.819605,-2.875001],[22.617099,-4.179334],[22.340102,-5.469902],[21.989527,-6.742454],[21.566528,-7.992800],[21.072499,-9.216821],[20.509066,-10.410486],[19.878085,-11.569863],[19.181634,-12.691135],[18.422008,-13.770607],[17.601708,-14.804725],[16.723435,-15.790083],[15.790083,-16.723435],[14.804725,-17.601708],[13.770607,-18.422008],[12.691135,-19.181634],[11.569863,-19.878085],[10.410486,-20.509066],[9.216821,-21.072499],[7.992800,-21.566528],[6.742454,-21.989527],[5.469902,-22.340102],[4.179334,-22.617099],[2.875001,-22.819605],[2.574526,-22.906792],[2.315699,-23.082563],[2.123856,-23.329714],[2.017776,-23.624051],[2.007844,-23.936762],[2.095031,-24.237237],[2.270802,-24.496064],[2.517953,-24.687907],[2.812290,-24.793987],[35.000000,-35.000000],[35.000000,35.000000],[-35.000000,35.000000],[-35.000000,-35.000000],[24.803918,3.125000],[24.571867,4.606876],[24.251366,6.072169],[23.843567,7.515604],[23.349938,8.931985],[22.772257,10.316213],[22.112604,11.663307],[21.373351,12.968416],[20.557162,14.226843],[19.666973,15.434058],[18.705989,16.585715],[17.677669,17.677669],[16.585715,18.705989],[15.434058,19.666973],[14.226843,20.557162],[12.968416,21.373351],[11.663307,22.112604],[10.316213,22.772257],[8.931985,23.349938],[7.515604,23.843567],[6.072169,24.251366],[4.606876,24.571867],[3.125000,24.803918],[2.812289,24.793985],[2.517952,24.687906],[2.270802,24.496063],[2.095031,24.237236],[2.007844,23.936761],[2.017776,23.624050],[2.123856,23.329713],[2.315698,23.082563],[2.574525,22.906791],[2.875000,22.819604],[4.179333,22.617098],[5.469901,22.340101],[6.742453,21.989526],[7.992799,21.566527],[9.216820,21.072498],[10.410485,20.509065],[11.569862,19.878084],[12.691134,19.181633],[13.770606,18.422007],[14.804724,17.601707],[15.790082,16.723434],[16.723434,15.790082],[17.601707,14.804724],[18.422007,13.770606],[19.181633,12.691134],[19.878084,11.569862],[20.509065,10.410485],[21.072498,9.216820],[21.566527,7.992799],[21.989526,6.742453],[22.340101,5.469901],[22.617098,4.179333],[22.819604,2.875000],[22.906791,2.574525],[23.082563,2.315698],[23.329713,2.123856],[23.624050,2.017776],[23.936761,2.007844],[24.237236,2.095031],[24.496063,2.270802],[24.687906,2.517952],[24.793985,2.812289],[-2.875001,22.819605],[-2.574526,22.906792],[-2.315699,23.082563],[-2.123856,23.329714],[-2.017776,23.624051],[-2.007844,23.936762],[-2.095031,24.237237],[-2.270802,24.496064],[-2.517953,24.687907],[-2.812290,24.793987],[-3.125001,24.803919],[-4.606877,24.571868],[-6.072170,24.251367],[-7.515605,23.843568],[-8.931986,23.349939],[-10.316214,22.772258],[-11.663308,22.112605],[-12.968417,21.373352],[-14.226844,20.557163],[-15.434059,19.666974],[-16.585716,18.705990],[-17.677670,17.677670],[-18.705990,16.585716],[-19.666974,15.434059],[-20.557163,14.226844],[-21.373352,12.968417],[-22.112605,11.663308],[-22.772258,10.316214],[-23.349939,8.931986],[-23.843568,7.515605],[-24.251367,6.072170],[-24.571868,4.606877],[-24.803919,3.125001],[-24.793986,2.812290],[-24.687906,2.517954],[-24.496064,2.270804],[-24.237237,2.095033],[-23.936762,2.007846],[-23.624051,2.017778],[-23.329714,2.123858],[-23.082564,2.315700],[-22.906792,2.574526],[-22.819605,2.875001],[-22.617099,4.179334],[-22.340102,5.469902],[-21.989527,6.742454],[-21.566528,7.992800],[-21.072499,9.216821],[-20.509066,10.410486],[-19.878085,11.569863],[-19.181634,12.691135],[-18.422008,13.770607],[-17.601708,14.804725],[-16.723435,15.790083],[-15.790083,16.723435],[-14.804725,17.601708],[-13.770607,18.422008],[-12.691135,19.181634],[-11.569863,19.878085],[-10.410486,20.509066],[-9.216821,21.072499],[-7.992800,21.566528],[-6.742454,21.989527],[-5.469902,22.340102],[-4.179334,22.617099]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64],[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129],[130,131,132,133],[134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198],[199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[-3.125001,-24.803919],[-2.812290,-24.793986],[-2.517954,-24.687906],[-2.270804,-24.496063],[-2.095033,-24.237237],[-2.007847,-23.936762],[-2.017779,-23.624051],[-2.123858,-23.329715],[-2.315700,-23.082564],[-2.574526,-22.906792],[-2.875001,-22.819605],[-4.179334,-22.617099],[-5.469902,-22.340102],[-6.742454,-21.989527],[-7.992800,-21.566528],[-9.216821,-21.072499],[-10.410486,-20.509066],[-11.569863,-19.878085],[-12.691135,-19.181634],[-13.770607,-18.422008],[-14.804725,-17.601708],[-15.790083,-16.723435],[-16.723435,-15.790083],[-17.601708,-14.804725],[-18.422008,-13.770607],[-19.181634,-12.691135],[-19.878085,-11.569863],[-20.509066,-10.410486],[-21.072499,-9.216821],[-21.566528,-7.992800],[-21.989527,-6.742454],[-22.340102,-5.469902],[-22.617099,-4.179334],[-22.819605,-2.875001],[-22.906792,-2.574526],[-23.082564,-2.315699],[-23.329714,-2.123857],[-23.624051,-2.017777],[-23.936762,-2.007845],[-24.237237,-2.095032],[-24.496064,-2.270803],[-24.687907,-2.517953],[-24.793986,-2.812290],[-24.803919,-3.125001],[-24.571868,-4.606877],[-24.251367,-6.072170],[-23.843568,-7.515605],[-23.349939,-8.931986],[-22.772258,-10.316214],[-22.112605,-11.663308],[-21.373352,-12.968417],[-20.557163,-14.226844],[-19.666974,-15.434059],[-18.705990,-16.585716],[-17.677670,-17.677670],[-16.585716,-18.705990],[-15.434059,-19.666974],[-14.226844,-20.557163],[-12.968417,-21.373352],[-11.663308,-22.112605],[-10.316214,-22.772258],[-8.931986,-23.349939],[-7.515605,-23.843568],[-6.072170,-24.251367],[-4.606877,-24.571868],[3.125001,-24.803919],[4.606877,-24.571868],[6.072170,-24.251367],[7.515605,-23.843568],[8.931986,-23.349939],[10.316214,-22.772258],[11.663308,-22.112605],[12.968417,-21.373352],[14.226844,-20.557163],[15.434059,-19.666974],[16.585716,-18.705990],[17.677670,-17.677670],[18.705990,-16.585716],[19.666974,-15.434059],[20.557163,-14.226844],[21.373352,-12.968417],[22.112605,-11.663308],[22.772258,-10.316214],[23.349939,-8.931986],[23.843568,-7.515605],[24.251367,-6.072170],[24.571868,-4.606877],[24.803919,-3.125001],[24.793985,-2.812291],[24.687905,-2.517955],[24.496063,-2.270805],[24.237236,-2.095034],[23.936762,-2.007848],[23.624051,-2.017780],[23.329715,-2.123859],[23.082564,-2.315701],[22.906793,-2.574527],[22.819605,-2.875001],[22.617099,-4.179334],[22.340102,-5.469902],[21.989527,-6.742454],[21.566528,-7.992800],[21.072499,-9.216821],[20.509066,-10.410486],[19.878085,-11.569863],[19.181634,-12.691135],[18.422008,-13.770607],[17.601708,-14.804725],[16.723435,-15.790083],[15.790083,-16.723435],[14.804725,-17.601708],[13.770607,-18.422008],[12.691135,-19.181634],[11.569863,-19.878085],[10.410486,-20.509066],[9.216821,-21.072499],[7.992800,-21.566528],[6.742454,-21.989527],[5.469902,-22.340102],[4.179334,-22.617099],[2.875001,-22.819605],[2.574526,-22.906792],[2.315699,-23.082563],[2.123856,-23.329714],[2.017776,-23.624051],[2.007844,-23.936762],[2.095031,-24.237237],[2.270802,-24.496064],[2.517953,-24.687907],[2.812290,-24.793987],[35.000000,-35.000000],[35.000000,35.000000],[-35.000000,35.000000],[-35.000000,-35.000000],[24.803918,3.125000],[24.571867,4.606876],[24.251366,6.072169],[23.843567,7.515604],[23.349938,8.931985],[22.772257,10.316213],[22.112604,11.663307],[21.373351,12.968416],[20.557162,14.226843],[19.666973,15.434058],[18.705989,16.585715],[17.677669,17.677669],[16.585715,18.705989],[15.434058,19.666973],[14.226843,20.557162],[12.968416,21.373351],[11.663307,22.112604],[10.316213,22.772257],[8.931985,23.349938],[7.515604,23.843567],[6.072169,24.251366],[4.606876,24.571867],[3.125000,24.803918],[2.812289,24.793985],[2.517952,24.687906],[2.270802,24.496063],[2.095031,24.237236],[2.007844,23.936761],[2.017776,23.624050],[2.123856,23.329713],[2.315698,23.082563],[2.574525,22.906791],[2.875000,22.819604],[4.179333,22.617098],[5.469901,22.340101],[6.742453,21.989526],[7.992799,21.566527],[9.216820,21.072498],[10.410485,20.509065],[11.569862,19.878084],[12.691134,19.181633],[13.770606,18.422007],[14.804724,17.601707],[15.790082,16.723434],[16.723434,15.790082],[17.601707,14.804724],[18.422007,13.770606],[19.181633,12.691134],[19.878084,11.569862],[20.509065,10.410485],[21.072498,9.216820],[21.566527,7.992799],[21.989526,6.742453],[22.340101,5.469901],[22.617098,4.179333],[22.819604,2.875000],[22.906791,2.574525],[23.082563,2.315698],[23.329713,2.123856],[23.624050,2.017776],[23.936761,2.007844],[24.237236,2.095031],[24.496063,2.270802],[24.687906,2.517952],[24.793985,2.812289],[-2.875001,22.819605],[-2.574526,22.906792],[-2.315699,23.082563],[-2.123856,23.329714],[-2.017776,23.624051],[-2.007844,23.936762],[-2.095031,24.237237],[-2.270802,24.496064],[-2.517953,24.687907],[-2.812290,24.793987],[-3.125001,24.803919],[-4.606877,24.571868],[-6.072170,24.251367],[-7.515605,23.843568],[-8.931986,23.349939],[-10.316214,22.772258],[-11.663308,22.112605],[-12.968417,21.373352],[-14.226844,20.557163],[-15.434059,19.666974],[-16.585716,18.705990],[-17.677670,17.677670],[-18.705990,16.585716],[-19.666974,15.434059],[-20.557163,14.226844],[-21.373352,12.968417],[-22.112605,11.663308],[-22.772258,10.316214],[-23.349939,8.931986],[-23.843568,7.515605],[-24.251367,6.072170],[-24.571868,4.606877],[-24.803919,3.125001],[-24.793986,2.812290],[-24.687906,2.517954],[-24.496064,2.270804],[-24.237237,2.095033],[-23.936762,2.007846],[-23.624051,2.017778],[-23.329714,2.123858],[-23.082564,2.315700],[-22.906792,2.574526],[-22.819605,2.875001],[-22.617099,4.179334],[-22.340102,5.469902],[-21.989527,6.742454],[-21.566528,7.992800],[-21.072499,9.216821],[-20.509066,10.410486],[-19.878085,11.569863],[-19.181634,12.691135],[-18.422008,13.770607],[-17.601708,14.804725],[-16.723435,15.790083],[-15.790083,16.723435],[-14.804725,17.601708],[-13.770607,18.422008],[-12.691135,19.181634],[-11.569863,19.878085],[-10.410486,20.509066],[-9.216821,21.072499],[-7.992800,21.566528],[-6.742454,21.989527],[-5.469902,22.340102],[-4.179334,22.617099]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64],[65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129],[130,131,132,133],[134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198],[199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263]]);}
module Y1(){translate([-6.125000,3.440000,0.800000])rotate([0,0,90.000000])children();}
module part_Y1(part=true,hole=false,block=false)
{
// Missing model Y1.1 Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm
};
module D2(){translate([12.500000,0.000000,0.800000])rotate([0,0,90.000000])children();}
module part_D2(part=true,hole=false,block=false)
{
// Missing model D2.1 LED_1206_3216Metric_Castellated
};
module D3(){translate([12.500000,5.000000,0.800000])rotate([0,0,90.000000])children();}
module part_D3(part=true,hole=false,block=false)
{
// Missing model D3.1 LED_1206_3216Metric_Castellated
};
module SW1(){translate([-10.200000,0.000000,0.800000])rotate([0,0,180.000000])children();}
module part_SW1(part=true,hole=false,block=false)
{
translate([-10.200000,0.000000,0.800000])rotate([0,0,180.000000])translate([2.050000,0.000000,1.150000])rotate([-0.000000,-0.000000,-90.000000])m0(part,hole,block,casetop); // RevK:ESE13 ESE13V01D (back)
};
module D1(){translate([12.500000,-5.000000,0.800000])rotate([0,0,90.000000])children();}
module part_D1(part=true,hole=false,block=false)
{
// Missing model D1.1 LED_1206_3216Metric_Castellated
};
module C7(){translate([1.375000,8.240000,0.800000])children();}
module part_C7(part=true,hole=false,block=false)
{
translate([1.375000,8.240000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C3(){translate([3.800000,16.350000,0.800000])rotate([0,0,90.000000])children();}
module part_C3(part=true,hole=false,block=false)
{
translate([3.800000,16.350000,0.800000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C5(){translate([1.700000,15.600000,0.800000])children();}
module part_C5(part=true,hole=false,block=false)
{
translate([1.700000,15.600000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R6(){translate([9.000000,6.100000,0.800000])children();}
module part_R6(part=true,hole=false,block=false)
{
translate([9.000000,6.100000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module R4(){translate([-6.100000,15.600000,0.800000])children();}
module part_R4(part=true,hole=false,block=false)
{
translate([-6.100000,15.600000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module C13(){translate([6.150000,3.840000,0.800000])rotate([0,0,-90.000000])children();}
module part_C13(part=true,hole=false,block=false)
{
translate([6.150000,3.840000,0.800000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C14(){translate([5.400000,6.140000,0.800000])children();}
module part_C14(part=true,hole=false,block=false)
{
translate([5.400000,6.140000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C9(){translate([-6.125000,8.690000,0.800000])children();}
module part_C9(part=true,hole=false,block=false)
{
translate([-6.125000,8.690000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C16(){translate([-6.125000,5.940000,0.800000])children();}
module part_C16(part=true,hole=false,block=false)
{
translate([-6.125000,5.940000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R9(){translate([9.000000,2.500000,0.800000])children();}
module part_R9(part=true,hole=false,block=false)
{
translate([9.000000,2.500000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module R8(){translate([9.000000,1.300000,0.800000])children();}
module part_R8(part=true,hole=false,block=false)
{
translate([9.000000,1.300000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module R11(){translate([-0.700000,-1.710000,0.800000])rotate([0,0,90.000000])children();}
module part_R11(part=true,hole=false,block=false)
{
translate([-0.700000,-1.710000,0.800000])rotate([0,0,90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module U1(){translate([0.000000,3.440000,0.800000])rotate([0,0,-90.000000])children();}
module part_U1(part=true,hole=false,block=false)
{
// Missing model U1.1 QFN-40-1EP_6x6mm_P0.5mm_EP4.6x4.6mm
};
module C17(){translate([-6.125000,0.940000,0.800000])rotate([0,0,180.000000])children();}
module part_C17(part=true,hole=false,block=false)
{
translate([-6.125000,0.940000,0.800000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C12(){translate([-1.375000,9.590000,0.800000])rotate([0,0,180.000000])children();}
module part_C12(part=true,hole=false,block=false)
{
translate([-1.375000,9.590000,0.800000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R5(){translate([-6.900000,10.590000,0.800000])rotate([0,0,-90.000000])children();}
module part_R5(part=true,hole=false,block=false)
{
translate([-6.900000,10.590000,0.800000])rotate([0,0,-90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module R7(){translate([9.000000,4.900000,0.800000])children();}
module part_R7(part=true,hole=false,block=false)
{
translate([9.000000,4.900000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module R10(){translate([9.000000,3.700000,0.800000])children();}
module part_R10(part=true,hole=false,block=false)
{
translate([9.000000,3.700000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module C18(){translate([-2.300000,-1.710000,0.800000])rotate([0,0,90.000000])children();}
module part_C18(part=true,hole=false,block=false)
{
translate([-2.300000,-1.710000,0.800000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C11(){translate([4.650000,3.840000,0.800000])rotate([0,0,-90.000000])children();}
module part_C11(part=true,hole=false,block=false)
{
translate([4.650000,3.840000,0.800000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C8(){translate([-6.900000,13.240000,0.800000])rotate([0,0,90.000000])children();}
module part_C8(part=true,hole=false,block=false)
{
translate([-6.900000,13.240000,0.800000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module J3(){translate([1.270000,-6.500000,0.800000])rotate([0,0,90.000000])children();}
module part_J3(part=true,hole=false,block=false)
{
// Missing model J3.1 PinHeader_1x05_P2.54mm_Vertical_SMD_Pin1Left
};
module C10(){translate([1.375000,9.590000,0.800000])children();}
module part_C10(part=true,hole=false,block=false)
{
translate([1.375000,9.590000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C1(){translate([1.700000,17.135000,0.800000])rotate([0,0,180.000000])children();}
module part_C1(part=true,hole=false,block=false)
{
translate([1.700000,17.135000,0.800000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module C6(){translate([-1.700000,15.600000,0.800000])rotate([0,0,180.000000])children();}
module part_C6(part=true,hole=false,block=false)
{
translate([-1.700000,15.600000,0.800000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module JP1(){translate([-5.350000,-1.960000,0.800000])children();}
module part_JP1(part=true,hole=false,block=false)
{
};
module R13(){translate([1.650000,-2.460000,0.800000])children();}
module part_R13(part=true,hole=false,block=false)
{
translate([1.650000,-2.460000,0.800000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module C15(){translate([-6.125000,7.340000,0.800000])children();}
module part_C15(part=true,hole=false,block=false)
{
translate([-6.125000,7.340000,0.800000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R14(){translate([1.650000,-0.960000,0.800000])rotate([0,0,180.000000])children();}
module part_R14(part=true,hole=false,block=false)
{
translate([1.650000,-0.960000,0.800000])rotate([0,0,180.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module L1(){translate([3.250000,12.440000,0.800000])rotate([0,0,45.000000])children();}
module part_L1(part=true,hole=false,block=false)
{
// Missing model L1.1 L_1008_2520Metric
};
module L2(){translate([-3.250000,12.440000,0.800000])rotate([0,0,-45.000000])children();}
module part_L2(part=true,hole=false,block=false)
{
// Missing model L2.1 L_1008_2520Metric
};
module C4(){translate([-3.800000,16.350000,0.800000])rotate([0,0,-90.000000])children();}
module part_C4(part=true,hole=false,block=false)
{
translate([-3.800000,16.350000,0.800000])rotate([0,0,-90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module R12(){translate([5.400000,-1.700000,0.800000])rotate([0,0,-90.000000])children();}
module part_R12(part=true,hole=false,block=false)
{
translate([5.400000,-1.700000,0.800000])rotate([0,0,-90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module D5(){translate([12.500000,2.500000,0.800000])rotate([0,0,90.000000])children();}
module part_D5(part=true,hole=false,block=false)
{
translate([12.500000,2.500000,0.800000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // D5
};
module C19(){translate([3.900000,-1.700000,0.800000])rotate([0,0,90.000000])children();}
module part_C19(part=true,hole=false,block=false)
{
translate([3.900000,-1.700000,0.800000])rotate([0,0,90.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module D4(){translate([12.500000,-2.500000,0.800000])rotate([0,0,90.000000])children();}
module part_D4(part=true,hole=false,block=false)
{
translate([12.500000,-2.500000,0.800000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // D5
};
module D6(){translate([5.400000,-4.100000,0.800000])rotate([0,0,90.000000])children();}
module part_D6(part=true,hole=false,block=false)
{
translate([5.400000,-4.100000,0.800000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // D5
};
module C20(){translate([5.300000,7.700000,0.800000])children();}
module part_C20(part=true,hole=false,block=false)
{
translate([5.300000,7.700000,0.800000])m4(part,hole,block,casetop); // RevK:C_1206 C_1206_3216Metric (back)
};
module D7(){translate([12.500000,7.500000,0.800000])rotate([0,0,90.000000])children();}
module part_D7(part=true,hole=false,block=false)
{
translate([12.500000,7.500000,0.800000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // D5
};
module D8(){translate([0.800000,-4.100000,0.800000])rotate([0,0,90.000000])children();}
module part_D8(part=true,hole=false,block=false)
{
translate([0.800000,-4.100000,0.800000])rotate([0,0,90.000000])m3(part,hole,block,casetop); // D5
};
module V1(){translate([0.000000,22.919605,0.800000])children();}
module part_V1(part=true,hole=false,block=false)
{
};
module C2(){translate([-1.700000,17.135000,0.800000])rotate([0,0,180.000000])children();}
module part_C2(part=true,hole=false,block=false)
{
translate([-1.700000,17.135000,0.800000])rotate([0,0,180.000000])m1(part,hole,block,casetop); // RevK:C_0603 C_0603_1608Metric (back)
};
module H1(){translate([-11.000000,-10.000000,0.800000])children();}
module part_H1(part=true,hole=false,block=false)
{
};
module R2(){translate([0.000000,21.410000,0.800000])rotate([0,0,90.000000])children();}
module part_R2(part=true,hole=false,block=false)
{
// Missing model R2.1 R_0805_2012Metric
};
module V2(){translate([0.000000,-22.919605,0.800000])rotate([0,0,180.000000])children();}
module part_V2(part=true,hole=false,block=false)
{
};
module R3(){translate([1.770000,19.510000,0.800000])rotate([0,0,90.000000])children();}
module part_R3(part=true,hole=false,block=false)
{
translate([1.770000,19.510000,0.800000])rotate([0,0,90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module D9(){translate([2.500000,-4.100000,0.800000])rotate([0,0,-90.000000])children();}
module part_D9(part=true,hole=false,block=false)
{
translate([2.500000,-4.100000,0.800000])rotate([0,0,-90.000000])m3(part,hole,block,casetop); // D5
};
module PCB1(){translate([0.000000,0.000000,0.800000])children();}
module part_PCB1(part=true,hole=false,block=false)
{
};
module R1(){translate([-1.770000,19.510000,0.800000])rotate([0,0,90.000000])children();}
module part_R1(part=true,hole=false,block=false)
{
translate([-1.770000,19.510000,0.800000])rotate([0,0,90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
module H2(){translate([11.000000,-10.000000,0.800000])children();}
module part_H2(part=true,hole=false,block=false)
{
};
module D10(){translate([-2.700000,-4.100000,0.800000])rotate([0,0,-90.000000])children();}
module part_D10(part=true,hole=false,block=false)
{
translate([-2.700000,-4.100000,0.800000])rotate([0,0,-90.000000])m3(part,hole,block,casetop); // D5
};
module A1(){translate([0.000000,0.000000,0.800000])children();}
module part_A1(part=true,hole=false,block=false)
{
// Missing model A1.1 653612
// Missing model A1.2 653612
};
module R15(){translate([6.800000,-1.675000,0.800000])rotate([0,0,-90.000000])children();}
module part_R15(part=true,hole=false,block=false)
{
translate([6.800000,-1.675000,0.800000])rotate([0,0,-90.000000])m2(part,hole,block,casetop); // RevK:R_0603 R_0603_1608Metric (back)
};
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false){
part_Y1(part,hole,block);
part_D2(part,hole,block);
part_D3(part,hole,block);
part_SW1(part,hole,block);
part_D1(part,hole,block);
part_C7(part,hole,block);
part_C3(part,hole,block);
part_C5(part,hole,block);
part_R6(part,hole,block);
part_R4(part,hole,block);
part_C13(part,hole,block);
part_C14(part,hole,block);
part_C9(part,hole,block);
part_C16(part,hole,block);
part_R9(part,hole,block);
part_R8(part,hole,block);
part_R11(part,hole,block);
part_U1(part,hole,block);
part_C17(part,hole,block);
part_C12(part,hole,block);
part_R5(part,hole,block);
part_R7(part,hole,block);
part_R10(part,hole,block);
part_C18(part,hole,block);
part_C11(part,hole,block);
part_C8(part,hole,block);
part_J3(part,hole,block);
part_C10(part,hole,block);
part_C1(part,hole,block);
part_C6(part,hole,block);
part_JP1(part,hole,block);
part_R13(part,hole,block);
part_C15(part,hole,block);
part_R14(part,hole,block);
part_L1(part,hole,block);
part_L2(part,hole,block);
part_C4(part,hole,block);
part_R12(part,hole,block);
part_D5(part,hole,block);
part_C19(part,hole,block);
part_D4(part,hole,block);
part_D6(part,hole,block);
part_C20(part,hole,block);
part_D7(part,hole,block);
part_D8(part,hole,block);
part_V1(part,hole,block);
part_C2(part,hole,block);
part_H1(part,hole,block);
part_R2(part,hole,block);
part_V2(part,hole,block);
part_R3(part,hole,block);
part_D9(part,hole,block);
part_PCB1(part,hole,block);
part_R1(part,hole,block);
part_H2(part,hole,block);
part_D10(part,hole,block);
part_A1(part,hole,block);
part_R15(part,hole,block);
}

parts_top=7;
module V4(){translate([22.919605,0.000000,0.000000])rotate([0,0,90.000000])rotate([180,0,0])children();}
module part_V4(part=true,hole=false,block=false)
{
};
module S2(){translate([10.000000,3.500000,0.000000])rotate([180,0,0])children();}
module part_S2(part=true,hole=false,block=false)
{
// Missing model S2.1 M3.5CSK (back)
};
module V3(){translate([-22.919605,0.000000,0.000000])rotate([0,0,-90.000000])rotate([180,0,0])children();}
module part_V3(part=true,hole=false,block=false)
{
};
module S1(){translate([-10.000000,3.500000,0.000000])rotate([180,0,0])children();}
module part_S1(part=true,hole=false,block=false)
{
// Missing model S1.1 M3.5CSK (back)
};
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false){
part_V4(part,hole,block);
part_S2(part,hole,block);
part_V3(part,hole,block);
part_S1(part,hole,block);
}

parts_bottom=0;
module b(cx,cy,z,w,l,h){translate([cx-w/2,cy-l/2,z])cube([w,l,h]);}
module m0(part=false,hole=false,block=false,height)
{ // RevK:ESE13 ESE13V01D
// Tamper switch
rotate([0,0,180])translate([0,2.05,-1.15])
{
	if(part)
	{
		b(0,0,0,3.6,4.2,1.4);
		b(0,-3.08,0,1.2,1.95,0.9);
	}
	if(block)
	{
		b(0,-3.08,1.5,1.2+2,1.95+2,height);
	}
}

}

module m1(part=false,hole=false,block=false,height)
{ // RevK:C_0603 C_0603_1608Metric
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m2(part=false,hole=false,block=false,height)
{ // RevK:R_0603 R_0603_1608Metric
if(part)
{
	b(0,0,0,1.6,0.95,0.2); // Pad size
	b(0,0,0,1.6,0.8,0.5); // Chip
}
}

module m3(part=false,hole=false,block=false,height)
{ // D5
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m4(part=false,hole=false,block=false,height)
{ // RevK:C_1206 C_1206_3216Metric
// 1206 Capacitor
if(part)
{
	b(0,0,0,3.2,1.6,1.5); // Part
	b(0,0,0,4.1,1.8,0.2); // Pads
}
}

// Generate PCB casework

height=casebottom+pcbthickness+casetop;
$fn=48;

module pyramid()
{ // A pyramid
 polyhedron(points=[[0,0,0],[-height,-height,height],[-height,height,height],[height,height,height],[height,-height,height]],faces=[[0,1,2],[0,2,3],[0,3,4],[0,4,1],[4,3,2,1]]);
}


module pcb_hulled(h=pcbthickness,r=0)
{ // PCB shape for case
	if(useredge)outline(h,r);
	else hull()outline(h,r);
}

module solid_case(d=0)
{ // The case wall
	hull()
        {
                translate([0,0,-casebottom])pcb_hulled(height,casewall-edge);
                translate([0,0,edge-casebottom])pcb_hulled(height-edge*2,casewall);
        }
}

module preview()
{
	pcb();
	color("#0f0")parts_top(part=true);
	color("#0f0")parts_bottom(part=true);
	color("#f00")parts_top(hole=true);
	color("#f00")parts_bottom(hole=true);
	color("#00f8")parts_top(block=true);
	color("#00f8")parts_bottom(block=true);
}

module top_half(fit=0)
{
	difference()
	{
		translate([-casebottom-100,-casewall-100,pcbthickness+0.01]) cube([pcbwidth+casewall*2+200,pcblength+casewall*2+200,height]);
		translate([0,0,pcbthickness])
        	{
			snape=lip/5;
			snaph=(lip-snape*2)/3;
			if(lipt==1)rotate(lipa)hull()
			{
				translate([0,-pcblength,lip/2])cube([0.001,pcblength*2,0.001]);
				translate([-lip/2,-pcblength,0])cube([lip,pcblength*2,0.001]);
			} else if(lipt==2)for(a=[0,90,180,270])rotate(a+lipa)hull()
			{
				translate([0,-pcblength-pcbwidth,lip/2])cube([0.001,pcblength*2+pcbwidth*2,0.001]);
				translate([-lip/2,-pcblength-pcbwidth,0])cube([lip,pcblength*2+pcbwidth*2,0.001]);
			}
            		difference()
            		{
                		pcb_hulled(lip,casewall);
				if(snap)
                        	{
					hull()
					{
						pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,snape])pcb_hulled(snaph,casewall/2+snap/2+fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(0.1,casewall/2-snap/2+fit);
					}
					translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2-snap/2+fit);
					hull()
					{
						translate([0,0,lip-snape])pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,lip])pcb_hulled(0.1,casewall/2+snap/2+fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2+fit);
				if(lipt==0)translate([-pcbwidth,-pcblength,0])cube([pcbwidth*2,pcblength*2,lip]);
				else if(lipt==1) rotate(lipa)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip]);
				}
				else if(lipt==2)for(a=[0,180])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
            		}
            		difference()
            		{
				if(snap)
                        	{
					hull()
					{
						translate([0,0,-0.1])pcb_hulled(0.1,casewall/2+snap/2-fit);
						translate([0,0,snape-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
					translate([0,0,snape])pcb_hulled(snaph,casewall/2-snap/2-fit);
					hull()
					{
						translate([0,0,snape+snaph])pcb_hulled(0.1,casewall/2-snap/2-fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2+snap/2-fit);
						translate([0,0,lip-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2-fit);
				if(lipt==1)rotate(lipa+180)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip+0.1]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip+0.1]);
				}
				else if(lipt==2)for(a=[90,270])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
			}
            	}
		minkowski()
                {
                	union()
                	{
                		parts_top(part=true,hole=true);
                		parts_bottom(part=true,hole=true);
                	}
                	translate([-0.01,-0.01,-height])cube([0.02,0.02,height]);
                }
        }
	minkowski()
        {
        	union()
                {
                	parts_top(part=true,hole=true);
                	parts_bottom(part=true,hole=true);
                }
                translate([-0.01,-0.01,0])cube([0.02,0.02,height]);
        }
}

module case_wall()
{
	difference()
	{
		solid_case();
		translate([0,0,-height])pcb_hulled(height*2,0.02);
	}
}

module top_side_hole()
{
	difference()
	{
		intersection()
		{
			parts_top(hole=true);
			case_wall();
		}
		translate([0,0,-casebottom])pcb_hulled(height,casewall);
	}
}

module bottom_side_hole()
{
	difference()
	{
		intersection()
		{
			parts_bottom(hole=true);
			case_wall();
		}
		translate([0,0,edge-casebottom])pcb_hulled(height-edge*2,casewall);
	}
}

module parts_space()
{
	minkowski()
	{
		union()
		{
			parts_top(part=true,hole=true);
			parts_bottom(part=true,hole=true);
		}
		sphere(r=margin,$fn=6);
	}
}

module top_cut(fit=0)
{
	difference()
	{
		top_half(fit);
		if(parts_top)difference()
		{
			minkowski()
			{ // Penetrating side holes
				top_side_hole();
				rotate([180,0,0])
				pyramid();
			}
			minkowski()
			{
				top_side_hole();
				rotate([0,0,45])cylinder(r=margin,h=height,$fn=4);
			}
		}
	}
	if(parts_bottom)difference()
	{
		minkowski()
		{ // Penetrating side holes
			bottom_side_hole();
			pyramid();
		}
			minkowski()
			{
				bottom_side_hole();
				rotate([0,0,45])translate([0,0,-height])cylinder(r=margin,h=height,$fn=4);
			}
	}
}

module bottom_cut()
{
	difference()
	{
		 translate([-casebottom-50,-casewall-50,-height]) cube([pcbwidth+casewall*2+100,pcblength+casewall*2+100,height*2]);
		 top_cut(-fit);
	}
}

module top_body()
{
	difference()
	{
		intersection()
		{
			solid_case();
			pcb_hulled(casetop+pcbthickness,0.03);
		}
		if(parts_top||topthickness)minkowski()
		{
			union()
			{
				if(nohull)parts_top(part=true);
				else hull(){parts_top(part=true);pcb_hulled();}
				if(topthickness)pcb_hulled(casetop+pcbthickness-topthickness,0);
			}
			translate([0,0,margin-height])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		pcb_hulled(casetop+pcbthickness,0.03);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
	}
}

module top_edge()
{
	intersection()
	{
		case_wall();
		top_cut();
	}
}

module top_pos()
{ // Position for plotting bottom
	translate([0,0,pcbthickness+casetop])rotate([180,0,0])children();
}

module pcb_pos()
{	// Position PCB relative to base 
		translate([0,0,pcbthickness-height])children();
}

module top()
{
	top_pos()difference()
	{
		union()
		{
			top_body();
			top_edge();
		}
		parts_space();
		pcb_pos()pcb(height,r=margin);
	}
}

module bottom_body()
{ // Position for plotting top
	difference()
	{
		intersection()
		{
			solid_case();
			translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness,0.03);
		}
		if(parts_bottom||bottomthickness)minkowski()
		{
			union()
			{
				if(nohull)parts_bottom(part=true);
				else hull()parts_bottom(part=true);
				if(bottomthickness)translate([0,0,bottomthickness-casebottom])pcb_hulled(casebottom+pcbthickness-bottomthickness,0);
			}
			translate([0,0,-margin])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness,0.03);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
	}
}

module bottom_edge()
{
	intersection()
	{
		case_wall();
		bottom_cut();
	}
}

module bottom_pos()
{
	translate([0,0,casebottom])children();
}

module bottom()
{
	bottom_pos()difference()
	{
		union()
		{
        		bottom_body();
        		bottom_edge();
		}
		parts_space();
		pcb(height,r=margin);
	}
}

module datecode()
{
	minkowski()
	{
		translate([datex,datey,-1])rotate(datea)scale([-1,1])linear_extrude(1)text(date,size=dateh,halign="center",valign="center",font=datef);
		cylinder(d1=datet,d2=0,h=datet,$fn=6);
	}
}

module logocode()
{
	minkowski()
	{
		translate([logox,logoy,-1])rotate(logoa)scale([-1,1])linear_extrude(1)text(logo,size=logoh,halign="center",valign="center",font=logof);
		cylinder(d1=logot,d2=0,h=logot,$fn=6);
	}
}
