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
N 90 -1830 90 -1790 { lab=ib}
N 90 -1920 90 -1890 { lab=vd}
N 90 -1920 400 -1920 { lab=vd}
N 400 -1920 400 -1890 { lab=vd}
N 400 -1920 640 -1920 { lab=vd}
N 640 -1920 640 -1890 { lab=vd}
N 640 -1920 810 -1920 { lab=vd}
N 810 -1920 810 -1890 { lab=vd}
N 130 -1860 360 -1860 { lab=ib}
N 360 -1860 360 -1810 { lab=ib}
N 600 -1860 600 -1810 { lab=ib}
N 600 -1810 770 -1810 { lab=ib}
N 770 -1860 770 -1810 { lab=ib}
N 400 -1890 400 -1860 { lab=vd}
N 90 -1890 90 -1860 { lab=vd}
N 640 -1890 640 -1860 { lab=vd}
N 810 -1890 810 -1860 { lab=vd}
N 810 -1830 810 -1750 { lab=out}
N 810 -1690 810 -1450 { lab=vs}
N 310 -1450 810 -1450 { lab=vs}
N 310 -1510 310 -1450 { lab=vs}
N 390 -1450 390 -1420 { lab=vs}
N 480 -1510 480 -1450 { lab=vs}
N 640 -1590 640 -1450 { lab=vs}
N 400 -1980 400 -1920 { lab=vd}
N 810 -1750 810 -1720 { lab=out}
N 480 -1540 480 -1510 { lab=vs}
N 310 -1540 310 -1510 { lab=vs}
N 640 -1620 640 -1590 { lab=vs}
N 90 -1820 150 -1820 { lab=ib}
N 150 -1860 150 -1820 { lab=ib}
N 640 -1720 770 -1720 { lab=#net1}
N 360 -1810 600 -1810 { lab=ib}
N 400 -1830 400 -1760 { lab=#net2}
N 310 -1760 400 -1760 { lab=#net2}
N 310 -1760 310 -1740 { lab=#net2}
N 400 -1760 480 -1760 { lab=#net2}
N 310 -1680 310 -1620 { lab=#net3}
N 310 -1620 310 -1570 { lab=#net3}
N 350 -1540 390 -1540 { lab=#net3}
N 390 -1540 440 -1540 { lab=#net3}
N 480 -1680 480 -1620 { lab=#net4}
N 480 -1620 480 -1570 { lab=#net4}
N 480 -1620 600 -1620 { lab=#net4}
N 530 -1680 530 -1620 { lab=#net4}
N 590 -1680 640 -1680 { lab=#net1}
N 640 -1680 640 -1650 { lab=#net1}
N 640 -1720 640 -1680 { lab=#net1}
N 640 -1830 640 -1720 { lab=#net1}
N 480 -1760 480 -1740 {lab=#net2}
N 810 -1790 860 -1790 { lab=out}
N 310 -1710 320 -1710 { lab=#net2}
N 320 -1760 320 -1710 { lab=#net2}
N 470 -1710 480 -1710 { lab=#net2}
N 470 -1760 470 -1710 { lab=#net2}
N 520 -1710 535 -1710 { lab=in2}
N 245 -1710 270 -1710 { lab=in1}
N 395 -1615 395 -1540 { lab=#net3}
N 310 -1615 395 -1615 { lab=#net3}
C {devices/capa.sym} 560 -1680 1 0 {name=Cc
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
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
C {devices/opin.sym} 860 -1790 0 0 {name=p7 lab=out}
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
