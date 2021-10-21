v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {1k} 115 -715 0 0 0.2 0.2 {}
N 230 -685 400 -685 { lab=in1}
N 230 -910 230 -685 { lab=in1}
N 660 -910 660 -670 { lab=out}
N 535 -670 660 -670 { lab=out}
N 205 -685 230 -685 { lab=in1}
N 115 -685 145 -685 { lab=in}
N 370 -655 400 -655 { lab=in2}
N 430 -625 430 -605 { lab=ib}
N 475 -625 475 -605 { lab=vs}
N 660 -790 730 -790 { lab=out}
N 300 -995 300 -980 { lab=c0}
N 330 -995 330 -980 { lab=c1}
N 360 -995 360 -980 { lab=c2}
N 390 -995 390 -980 { lab=c3}
N 420 -995 420 -980 { lab=c4}
N 450 -995 450 -980 { lab=c5}
N 480 -995 480 -980 { lab=c6}
N 510 -995 510 -980 { lab=c7}
C {/home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/xschem/digpot.sym} 220 -730 0 0 {name=XDP1}
C {devices/code_shown.sym} 90 -1190 0 0 {name=Lib only_toplevel=false value=".end
.lib /edatools/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/minimal_libs/sky130_libs/sky130_lib.spice"}
C {/home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/xschem/ota.sym} 420 -670 0 0 {name=XOTA1}
C {devices/lab_pin.sym} 230 -895 0 0 {name=l21 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 475 -715 1 0 {name=l23 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 580 -980 1 0 {name=l24 sig_type=std_logic lab=vd}
C {sky130_fd_pr/res_high_po_0p35.sym} 175 -685 3 0 {name=Ri
W=0.35
L=0.98
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 115 -685 0 0 {name=p1 lab=in}
C {devices/ipin.sym} 375 -655 0 0 {name=p2 lab=in2}
C {devices/iopin.sym} 430 -615 1 0 {name=p3 lab=ib}
C {devices/iopin.sym} 475 -615 1 0 {name=p4 lab=vs}
C {devices/opin.sym} 725 -790 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 795 -1020 3 0 {name=p6 lab=gnd}
C {devices/lab_pin.sym} 580 -830 3 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 175 -665 3 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/ipin.sym} 300 -990 1 0 {name=p7 lab=c0}
C {devices/ipin.sym} 330 -990 1 0 {name=p8 lab=c1}
C {devices/ipin.sym} 360 -990 1 0 {name=p9 lab=c2}
C {devices/ipin.sym} 390 -990 1 0 {name=p10 lab=c3}
C {devices/ipin.sym} 420 -990 1 0 {name=p11 lab=c4}
C {devices/ipin.sym} 450 -990 1 0 {name=p12 lab=c5}
C {devices/ipin.sym} 480 -990 1 0 {name=p13 lab=c6}
C {devices/ipin.sym} 510 -990 1 0 {name=p14 lab=c7}
