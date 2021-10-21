
# DIGITALLY PROGRAMMABLE GAIN AMPLIFIER

## 1. LIST OF THE INVOLVED TEAM MEMBERS

- Francisco de Assis Brito Filho (Faculty member)
- Hugo Dias Giló (Undergraduate student)
- Daniel Da Silva Santos (Undergraduate student)

## 2. A SHORT DESCRIPTION OF THE CIRCUIT AND YOUR SPECIFIC DESIGN GOALS

<p align="justify">The proposed circuit is a Digitally Programmable Gain Amplifier (DVGA) which will work to amplify voltage signal with programmable gain options, ranging from 1 V / V to 256 V / V. The main core is an OTA Miller with output buffer configured as an inverter amplifier. The circuit feedback resistances is controlled by 8 CMOS switches (Transmission Gates) that are configured according to binary word stored in the shift register which is connected to a Serial Peripheral Interface (SPI) that provides a connection for external control. The circuit is expected to work with 1.8 V power supply and to have a unity gain frequency of 5 MHz. Also is expected a higher than 80 dB CMRR and 60 dB open-loop gain, among others specifications presented on table 1.</p>

## 3. TARGET PERFORMANCE SUMMARY TABLE


| Parameter               |  Specification      | Unit                |
| ----------------------- | ------------------- | ------------------- |
| Vdd                     | 1.8                 | V                   |
| Output Swing            | Vcmout+-0           | V                   |
| Open-loop Gain          | 60                  | dB                  |
| Programmable gain range | 1-256               | V/V                 |
| GBW                     | 5                   | MHz                 |
| Phase margin            | >= 60               | °                   |
| Slew Rate               | 0.8                 | V/us                |
| CMRR                    | 81.5                | dB                  |

**Table 1** – DPGA expected performance.

## 4. A BLOCK DIAGRAM

<p align="center"><img width="640" src=".github/dpga-block-diagram.png"/></p>

**Figure 1** – DPGA Block Diagram.

<p>The circuit is composed by an operational amplifier with adjusted gain programmable using CMOS switches. The programmable interface is a serial input as an SPI in order to provide access to external devices to control the gain.</p>

## 5. SCHEMATICS OF THE CRITICAL CIRCUIT CORE

Below are the schematics of the critical circuit core, an Operational Amplifier using the OTA Miller with output buffer.

<p align="center"><img width="640" src=".github/ota-miller-with-output-buffer.png"/></p>

**Figure 2** - OpAmp with digitally programmable schematic.

<p align="justify">The negative feedback loop of the Operational Amplifier has resistances controlled by CMOS switches in order to program the overall gain, as in figure 3.</p>

<p align="center"><img width="640" src=".github/opamp-with-digitally-programmable-schematic.png"/></p>

**Figure 3** - OpAmp with digitally programmable schematic.

## 6. CREATED SCHEMATICS
Below are the schematics created in the XSCHEM software.

<p align="center"><img src=".github/schematic/digpot.png"/></p>

**Figure 4** - Digital potentiometer.

<p align="center"><img width="640" src=".github/schematic/dpga.png"/></p>

**Figure 5** - Digital potentiometer and OTA.

<p align="center"><img width="640" src=".github/schematic/dpga_with_cload.png"/></p>

**Figure 6** - DPGA top entity with load.

<p align="center"><img width="640" src=".github/schematic/ota.png"/></p>

**Figure 7** - OTA Miller schematic.

<p align="center"><img width="640" src=".github/schematic/tg.png"/></p>

**Figure 8** - Transmission gate with control.

## 7. Layouts

The analog and digital circuit layouts created will be presented below. 

<p align="center"><img width="640" src=".github/layout/digpot.png"/></p>

**Figure 8** - Digital potentiometer layout.

<p align="center"><img width="640" src=".github/layout/dpga_spi.png"/></p>

**Figure 9** - DPGA layout.

<p align="center"><img width="640" src=".github/layout/ota.png"/></p>

**Figure 10** - OTA Miller layout.

<p align="center"><img width="640" src=".github/layout/spi.png"/></p>

**Figure 10** - SPI module layout (a).

<p align="center"><img width="640" src=".github/layout/spi_ports.png"/></p>

**Figure 11** - SPI module layout (b).

## 8. Simulations

<p align="center"><img width="640" src=".github/simulations/digpot_tb-00000000b.png"/></p>

**Figure 12** - DPGA minimum gain.

<p align="center"><img width="640" src=".github/simulations/dpga_tb-11111111b.png"/></p>

**Figure 13** - DPGA maximum gain.

<p align="center"><img width="640" src=".github/simulations/digpot_tb.png"/></p>

**Figure 14** - Digital potentiometer simulation.

<p align="center"><img width="640" src=".github/simulations/dpga_tb.png"/></p>

**Figure 15** - DPGA simultation.

<p align="center"><img width="640" src=".github/simulations/ota_CMRR.png"/></p>

**Figure 16** - OTA CMRR simultation.

<p align="center"><img width="640" src=".github/simulations/ota_ac-gain.png"/></p>

**Figure 17** - OTA gain.

<p align="center"><img width="640" src=".github/simulations/ota_ac-phase.png"/></p>

**Figure 18** - OTA phase.

<p align="center"><img width="640" src=".github/simulations/ota_common-mode.png"/></p>

**Figure 19** - OTA common mode.

<p align="center"><img width="640" src=".github/simulations/ota_dc.png"/></p>

**Figure 20** - OTA DC simulatation.

<p align="center"><img width="640" src=".github/simulations/ota_diff-mode.png"/></p>

**Figure 21** - OTA differential mode.

<p align="center"><img width="640" src=".github/simulations/ota_large-signal.png"/></p>

**Figure 22** - OTA large signal simulation.

<p align="center"><img width="640" src=".github/simulations/ota_tran.png"/></p>

**Figure 22** - OTA transient simulation.

## 9. APPLICABLE REFERENCES

Main references for OpAmp Design are:

- P. E. Allen, D. R. Holberg. CMOS Analog Circuit Design. 2nd Ed., Oxford, New York, 2002.
- B. Razavi. Design of Analog CMOS Integrated Circuits. McGraw -Hill, New York, 2001.
- P. Jespers, B. Murmann. Systematic Design of Analog CMOS Circuits: Using Pre-Computed Lookup. Cambridge Press. 2017.
