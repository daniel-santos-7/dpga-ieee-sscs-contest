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
N 495 -750 495 -740 { lab=in11}
N 495 -530 495 -520 { lab=ib1}
N 495 -680 495 -670 { lab=GND}
N 495 -460 495 -450 { lab=GND}
N 715 -630 715 -615 { lab=ib1}
N 760 -630 760 -620 { lab=#net1}
N 820 -675 830 -675 { lab=out1}
N 760 -730 760 -720 { lab=vd}
N 670 -660 685 -660 { lab=in11}
N 670 -690 685 -690 { lab=in11}
N 1235 -625 1235 -610 { lab=ib2}
N 1280 -625 1280 -615 { lab=#net2}
N 1340 -670 1350 -670 { lab=out2}
N 1280 -725 1280 -715 { lab=vd}
N 1190 -655 1205 -655 { lab=in22}
N 1190 -685 1205 -685 { lab=in12}
N 1020 -740 1020 -730 { lab=in12}
N 1025 -465 1025 -455 { lab=ib2}
N 1020 -670 1020 -660 { lab=GND}
N 1025 -395 1025 -385 { lab=GND}
N 1015 -615 1015 -605 { lab=in22}
N 1015 -545 1015 -535 { lab=GND}
C {devices/vsource.sym} 495 -710 0 0 {name=VIN11 value="DC 0 AC 1"}
C {devices/isource.sym} 495 -490 0 0 {name=ibias2 value=5.53u}
C {devices/gnd.sym} 495 -670 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 990 -915 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} 1120 -920 0 0 {name=VSS value=-1.8
}
C {devices/code_shown.sym} 1475 -995 0 0 {name=Simulation only_toplevel=false value="**cmd step stop
.ac dec 2000 1 110Meg
.end

.control
destroy all
run
*CMRR
let gain_common=db(OUT1/IN11)
*plot gain_common
let gain_diff=db(OUT2/(IN12-IN22)) 
*plot gain_diff
let cmrr=gain_diff-gain_common
plot cmrr
.endc"}
C {devices/gnd.sym} 1120 -890 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 990 -885 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 495 -450 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 495 -530 0 0 {name=l17 sig_type=std_logic lab=ib1}
C {devices/lab_pin.sym} 495 -750 0 0 {name=l10 sig_type=std_logic lab=in11}
C {devices/lab_pin.sym} 670 -660 0 0 {name=l3 sig_type=std_logic lab=in11}
C {devices/lab_pin.sym} 670 -690 0 0 {name=l5 sig_type=std_logic lab=in11}
C {devices/lab_pin.sym} 715 -615 2 0 {name=l12 sig_type=std_logic lab=ib1}
C {devices/lab_pin.sym} 830 -675 2 0 {name=l15 sig_type=std_logic lab=out1}
C {devices/code_shown.sym} 1480 -655 0 0 {name=Config only_toplevel=false value=".lib /edatools/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/minimal_libs/sky130_libs/sky130_lib.spice
*.param nf=1"
}
C {/home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/xschem/ota.sym} 705 -675 0 0 {name=X1}
C {devices/lab_pin.sym} 1190 -655 0 0 {name=l8 sig_type=std_logic lab=in22}
C {devices/lab_pin.sym} 1190 -685 0 0 {name=l11 sig_type=std_logic lab=in12}
C {devices/lab_pin.sym} 1235 -610 2 0 {name=l16 sig_type=std_logic lab=ib2}
C {devices/lab_pin.sym} 1350 -670 2 0 {name=l20 sig_type=std_logic lab=out2}
C {/home/hugodg/sky130_skel/dpga-ieee-sscs-contest-main/xschem/ota.sym} 1225 -670 0 0 {name=X2}
C {devices/vsource.sym} 1020 -700 0 0 {name=VIN12 value="DC 0 AC 1"}
C {devices/isource.sym} 1025 -425 0 0 {name=ibias1 value=5.53u}
C {devices/gnd.sym} 1020 -660 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 1025 -385 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1025 -465 0 0 {name=l23 sig_type=std_logic lab=ib2}
C {devices/lab_pin.sym} 1020 -740 0 0 {name=l24 sig_type=std_logic lab=in12}
C {devices/vsource.sym} 1015 -575 0 0 {name=VIN22 value="DC 0 AC 1 180"}
C {devices/gnd.sym} 1015 -535 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 1015 -615 0 0 {name=l26 sig_type=std_logic lab=in22}
C {devices/capa.sym} 830 -645 0 0 {name=Cl1
m=1
value=4p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 830 -615 0 0 {name=l27 lab=GND}
C {devices/capa.sym} 1340 -640 0 0 {name=Cl2
m=1
value=4p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1340 -610 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 990 -950 0 0 {name=l1 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1120 -950 0 0 {name=l4 sig_type=std_logic lab=vs}
C {devices/lab_pin.sym} 760 -730 1 0 {name=l13 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 1280 -725 1 0 {name=l14 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 760 -620 3 0 {name=l18 sig_type=std_logic lab=vs}
C {devices/lab_pin.sym} 1280 -615 3 0 {name=l19 sig_type=std_logic lab=vs}
