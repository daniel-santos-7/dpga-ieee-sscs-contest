v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -310 320 -310 { lab=GND}
N 110 -460 110 -310 { lab=GND}
N 110 -460 150 -460 { lab=GND}
N 380 -310 620 -310 { lab=n8}
N 620 -460 620 -310 { lab=n8}
N 580 -460 620 -460 { lab=n8}
N 500 -380 500 -360 { lab=GND}
N 500 -550 500 -530 { lab=vd}
N 220 -550 220 -530 { lab=c0}
N 140 -880 140 -850 { lab=GND}
N 340 -880 340 -850 { lab=GND}
N 140 -880 1610 -880 { lab=GND}
N 1610 -880 1610 -850 { lab=GND}
N 1380 -880 1380 -850 { lab=GND}
N 1170 -880 1170 -850 { lab=GND}
N 950 -880 950 -850 { lab=GND}
N 740 -880 740 -850 { lab=GND}
N 680 -930 680 -880 { lab=GND}
N 540 -880 540 -850 { lab=GND}
N 140 -790 140 -760 { lab=c0}
N 340 -790 340 -760 { lab=c1}
N 540 -790 540 -760 { lab=c2}
N 740 -790 740 -760 { lab=c3}
N 950 -790 950 -760 { lab=c4}
N 1170 -790 1170 -760 { lab=c5}
N 1380 -790 1380 -760 { lab=c6}
N 1610 -790 1610 -760 { lab=c7}
N 250 -550 250 -530 { lab=c1}
N 280 -550 280 -530 { lab=c2}
N 310 -550 310 -530 { lab=c3}
N 340 -550 340 -530 { lab=c4}
N 370 -550 370 -530 { lab=c5}
N 400 -550 400 -530 { lab=c6}
N 430 -550 430 -530 { lab=c7}
N 110 -310 110 -290 { lab=GND}
C {/home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/xschem/digpot.sym} 140 -280 0 0 {name=x1}
C {devices/vsource.sym} 350 -310 1 0 {name=V8 value=1.8
}
C {devices/gnd.sym} 500 -360 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 500 -580 2 0 {name=Vdd value=1.8
}
C {devices/vsource.sym} 140 -820 2 0 {name=Vc0 value="pulse(1.8 0 0 0 0 5m 10m)"
}
C {devices/vsource.sym} 340 -820 2 0 {name=Vc1 value="pulse(1.8 0 0 0 0 10m 20m)"
}
C {devices/vsource.sym} 540 -820 2 0 {name=Vc2 value="pulse(1.8 0 0 0 0 20m 40m)"
}
C {devices/vsource.sym} 740 -820 2 0 {name=Vc3 value="pulse(1.8 0 0 0 0 40m 80m)"
}
C {devices/vsource.sym} 950 -820 2 0 {name=Vc4 value="pulse(1.8 0 0 0 0 80m 160m)"
}
C {devices/vsource.sym} 1170 -820 2 0 {name=Vc5 value="pulse(1.8 0 0 0 0 160m 320m)"
}
C {devices/vsource.sym} 1380 -820 2 0 {name=Vc6 value="pulse(1.8 0 0 0 0 320m 640m)"
}
C {devices/vsource.sym} 1610 -820 2 0 {name=Vc7 value="pulse(1.8 0 0 0 0 640m 1280m)"
}
C {devices/gnd.sym} 680 -930 2 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 140 -760 0 0 {name=l3 sig_type=std_logic lab=c0}
C {devices/lab_pin.sym} 340 -760 0 0 {name=l4 sig_type=std_logic lab=c1}
C {devices/lab_pin.sym} 540 -760 0 0 {name=l5 sig_type=std_logic lab=c2}
C {devices/lab_pin.sym} 740 -760 0 0 {name=l6 sig_type=std_logic lab=c3}
C {devices/lab_pin.sym} 950 -760 0 0 {name=l7 sig_type=std_logic lab=c4}
C {devices/lab_pin.sym} 1170 -760 0 0 {name=l8 sig_type=std_logic lab=c5}
C {devices/lab_pin.sym} 1380 -760 0 0 {name=l9 sig_type=std_logic lab=c6}
C {devices/lab_pin.sym} 1610 -760 0 0 {name=l10 sig_type=std_logic lab=c7}
C {devices/lab_pin.sym} 220 -550 0 0 {name=l11 sig_type=std_logic lab=c0}
C {devices/lab_pin.sym} 250 -550 0 0 {name=l12 sig_type=std_logic lab=c1}
C {devices/lab_pin.sym} 280 -550 0 0 {name=l13 sig_type=std_logic lab=c2}
C {devices/lab_pin.sym} 310 -550 0 0 {name=l14 sig_type=std_logic lab=c3}
C {devices/lab_pin.sym} 340 -550 0 0 {name=l15 sig_type=std_logic lab=c4}
C {devices/lab_pin.sym} 370 -550 0 0 {name=l16 sig_type=std_logic lab=c5}
C {devices/lab_pin.sym} 400 -550 0 0 {name=l17 sig_type=std_logic lab=c6}
C {devices/lab_pin.sym} 430 -550 0 0 {name=l18 sig_type=std_logic lab=c7}
C {devices/code_shown.sym} 110 -1030 0 0 {name=Lib only_toplevel=false value=".end
.lib /edatools/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/minimal_libs/sky130_libs/sky130_lib.spice"}
C {devices/code_shown.sym} 130 -1170 0 0 {name=Simulation only_toplevel=false value=".control
run
tran 1m 1280m 5m
plot abs(n8/i(V8))
plot c0 c1+2 c2+4 c3+6 c4+8 c6+10 c7+12
.endc"}
C {devices/gnd.sym} 500 -610 2 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 500 -540 0 0 {name=l20 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 620 -460 0 1 {name=l22 sig_type=std_logic lab=n8}
C {devices/gnd.sym} 110 -290 0 0 {name=l23 lab=GND}
