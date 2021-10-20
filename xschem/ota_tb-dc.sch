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
N 755 -640 755 -630 { lab=in2}
N 755 -745 755 -735 { lab=in1}
N 755 -525 755 -515 { lab=ib}
N 755 -675 755 -665 { lab=GND}
N 755 -570 755 -560 { lab=GND}
N 755 -455 755 -445 { lab=GND}
N 1055 -650 1065 -650 { lab=in2}
N 1055 -690 1065 -690 { lab=in1}
N 1185 -745 1185 -735 { lab=vd}
N 1185 -605 1185 -595 { lab=vs}
N 1265 -670 1295 -670 { lab=out}
N 1130 -605 1130 -590 { lab=ib}
C {devices/vsource.sym} 755 -600 2 0 {name=VIN2 value=0}
C {devices/vsource.sym} 755 -705 0 0 {name=VIN1 value=3}
C {devices/isource.sym} 755 -485 0 0 {name=ibias value=5.53u}
C {devices/gnd.sym} 755 -665 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 990 -915 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} 1120 -920 0 0 {name=VSS value=-1.8
}
C {madvlsi/tt_models.sym} 1480 -570 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/code_shown.sym} 1490 -760 0 0 {name=SPICE only_toplevel=false value=".DC VIN1 -1.8 1.8 0.01
.save all"}
C {devices/vdd.sym} 990 -945 0 0 {name=l1 lab=vd}
C {devices/vdd.sym} 1120 -950 0 0 {name=l4 lab=vs}
C {devices/gnd.sym} 1120 -890 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 990 -885 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 755 -560 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 755 -445 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 755 -525 0 0 {name=l17 sig_type=std_logic lab=ib}
C {devices/lab_pin.sym} 755 -745 0 0 {name=l10 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 755 -640 0 0 {name=l11 sig_type=std_logic lab=in2}
C {my_projects/dpga/ota.sym} 1175 -670 0 0 {name=X1}
C {devices/lab_pin.sym} 1055 -650 0 0 {name=l3 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 1055 -690 0 0 {name=l5 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 1130 -590 2 0 {name=l12 sig_type=std_logic lab=ib}
C {devices/vdd.sym} 1185 -745 0 0 {name=l13 lab=vd}
C {devices/vdd.sym} 1185 -595 2 0 {name=l14 lab=vs}
C {devices/lab_pin.sym} 1295 -670 2 0 {name=l15 sig_type=std_logic lab=out}
