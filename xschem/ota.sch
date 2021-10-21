v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 90 -1820 90 -1790 { lab=ib}
N 90 -1920 90 -1860 { lab=vd}
N 90 -1920 400 -1920 { lab=vd}
N 400 -1920 400 -1860 { lab=vd}
N 400 -1920 640 -1920 { lab=vd}
N 640 -1920 640 -1860 { lab=vd}
N 640 -1920 810 -1920 { lab=vd}
N 810 -1920 810 -1860 { lab=vd}
N 150 -1860 360 -1860 { lab=ib}
N 360 -1860 360 -1810 { lab=ib}
N 600 -1860 600 -1810 { lab=ib}
N 600 -1810 770 -1810 { lab=ib}
N 770 -1860 770 -1810 { lab=ib}
N 810 -1690 810 -1450 { lab=vs}
N 640 -1450 810 -1450 { lab=vs}
N 390 -1450 390 -1420 { lab=vs}
N 400 -1980 400 -1920 { lab=vd}
N 480 -1540 480 -1450 { lab=vs}
N 310 -1540 310 -1450 { lab=vs}
N 640 -1620 640 -1450 { lab=vs}
N 90 -1820 150 -1820 { lab=ib}
N 150 -1860 150 -1820 { lab=ib}
N 640 -1720 770 -1720 { lab=e}
N 360 -1810 600 -1810 { lab=ib}
N 400 -1830 400 -1760 { lab=b}
N 320 -1760 400 -1760 { lab=b}
N 310 -1760 310 -1740 { lab=b}
N 470 -1760 480 -1760 { lab=b}
N 310 -1680 310 -1615 { lab=c}
N 310 -1615 310 -1570 { lab=c}
N 350 -1540 395 -1540 { lab=c}
N 395 -1540 440 -1540 { lab=c}
N 480 -1680 480 -1620 { lab=d}
N 480 -1620 480 -1570 { lab=d}
N 530 -1620 600 -1620 { lab=d}
N 530 -1680 530 -1620 { lab=d}
N 590 -1680 640 -1680 { lab=e}
N 640 -1680 640 -1650 { lab=e}
N 640 -1720 640 -1680 { lab=e}
N 640 -1830 640 -1720 { lab=e}
N 480 -1760 480 -1740 {lab=b}
N 310 -1710 320 -1710 { lab=b}
N 320 -1760 320 -1710 { lab=b}
N 470 -1710 480 -1710 { lab=b}
N 470 -1760 470 -1710 { lab=b}
N 520 -1710 535 -1710 { lab=in2}
N 245 -1710 270 -1710 { lab=in1}
N 395 -1615 395 -1540 { lab=c}
N 310 -1615 395 -1615 { lab=c}
N 810 -1760 810 -1750 { lab=out}
N 810 -1720 820 -1720 { lab=out}
N 820 -1760 820 -1720 { lab=out}
N 810 -1760 820 -1760 { lab=out}
N 810 -1800 865 -1800 { lab=out}
N 310 -1450 390 -1450 { lab=vs}
N 390 -1450 480 -1450 { lab=vs}
N 480 -1450 640 -1450 { lab=vs}
N 90 -1830 90 -1820 { lab=ib}
N 130 -1860 150 -1860 { lab=ib}
N 480 -1620 530 -1620 { lab=d}
N 310 -1760 320 -1760 { lab=b}
N 400 -1760 470 -1760 { lab=b}
N 810 -1800 810 -1760 { lab=out}
N 810 -1830 810 -1800 { lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 460 -1540 0 0 {name=M4
L=1
W=0.861
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 620 -1620 0 0 {name=M7
L=1
W=8.61
nf=2 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 -1860 0 1 {name=M5
L=1
W=5.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -1860 0 0 {name=M6
L=1
W=5.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 620 -1860 0 0 {name=M8
L=1
W=29.3
nf=5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 790 -1860 0 0 {name=M10
L=1
W=5.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 790 -1720 0 0 {name=M9
L=1
W=5.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -1710 0 0 {name=M1
L=1
W=2.93
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 400 -1970 3 0 {name=p2 lab=vd}
C {devices/iopin.sym} 390 -1430 1 0 {name=p6 lab=vs}
C {sky130_fd_pr/pfet_01v8.sym} 500 -1710 0 1 {name=M2
L=1
W=2.93
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -1540 0 1 {name=M3
L=1
W=0.861
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 90 -1800 1 0 {name=p1 lab=ib}
C {devices/ipin.sym} 255 -1710 0 0 {name=p3 lab=in1}
C {devices/ipin.sym} 530 -1710 0 1 {name=p4 lab=in2}
C {devices/opin.sym} 860 -1800 0 0 {name=p5 lab=out}
C {devices/lab_wire.sym} 400 -1790 0 0 {name=l2 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 310 -1640 0 0 {name=l3 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 520 -1620 0 0 {name=l4 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 640 -1720 0 0 {name=l5 sig_type=std_logic lab=e}
C {sky130_fd_pr/cap_mim_m3_1.sym} 560 -1680 1 0 {name=CC model=cap_mim_m3_1 W=22.023 L=22.023 MF=1 spiceprefix=X}
