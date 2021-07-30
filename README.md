<p align="center"><img src=".github/ieee-sscs-contest.png"></p>

# DIGITALLY PROGRAMMABLE GAIN AMPLIFIER - SSCS "PICO" OPEN-SOURCE DESIGN CONTEST

## 1. LIST OF THE INVOLVED TEAM MEMBERS (IF ANY, IN ADDITION TO THE LEAD DESIGNER SUBMITTING THE PROPOSAL).

- Francisco de Assis Brito Filho (Faculty member)
- Hugo Dias Giló (Undergraduate student)
- Daniel Da Silva Santos (Undergraduate student)

## 2. A SHORT DESCRIPTION OF THE CIRCUIT AND YOUR SPECIFIC DESIGN GOALS

<p align="justify">The proposed circuit is a Digitally Programmable Gain Amplifier (DVGA) which will work to amplify voltage signal with programmable gain options, ranging from 1 V / V to 256 V / V. The main core is an OTA Miller with output buffer configured as an inverter amplifier. The circuit feedback resistances is controlled by 8 CMOS switches (Transmission Gates) that are configured according to binary word stored in the shift register which is connected to a Serial Peripheral Interface (SPI) that provides a connection for external control. The circuit is expected to work with 1.8 V power supply and to have a unity gain frequency of 5 MHz. Also is expected a higher than 80 dB CMRR and 60 dB open-loop gain, among others specifications presented on table 1.</p>

## 3. TARGET PERFORMANCE SUMMARY TABLE


| parameter               |  specification      | unit                |
| ----------------------- | ------------------- | ------------------- |
| Vdd                     | 1.8                 | V                   |
| Output Swing            | Vcmout+-0           | V                   |
| Open-loop Gain          | 60                  | dB                  |
| Programmable gain range | 1-256               | V/V                 |
| GBW                     | 5                   | MHz                 |
| Phase margin            | >= 60               | °                   |
| Slew Rate               | 0.8                 | V/us                |
| CMRR                    | 81.5                | dB                  |

**Table 1** – DPGA expected performance.[Autor]

## 4. A BLOCK DIAGRAM

<p align="center"><img width="640" src=".github/dpga-block-diagram.png"/></p>

**Figure 1** – DPGA Block Diagram. [Autor]

<p>The circuit is composed by an operational amplifier with adjusted gain programmable using CMOS switches. The programmable interface is a serial input as an SPI in order to provide access to external devices to control the gain.</p>

## 5. SCHEMATICS OF THE CRITICAL CIRCUIT CORE

Below are the schematics of the critical circuit core, an Operational Amplifier using the OTA Miller with output buffer.

<p align="center"><img width="640" src=".github/ota-miller-with-output-buffer.png"/></p>

**Figure 2** - OpAmp with digitally programmable schematic. [Autor]

<p align="justify">The negative feedback loop of the Operational Amplifier has resistances controlled by CMOS switches in order to program the overall gain, as in figure 3.</p>

<p align="center"><img width="640" src=".github/opamp-with-digitally-programmable-schematic.png"/></p>

**Figure 3** - OpAmp with digitally programmable schematic. [Autor]

## 6. APPLICABLE REFERENCES (E.G., A PAPER THAT INSPIRED YOUR DESIGN, ANY OPEN-SOURCE BLOCKS THAT YOU WILL REUSE, ETC.)

Main references for OpAmp Design are:

- P. E. Allen, D. R. Holberg. CMOS Analog Circuit Design. 2nd Ed., Oxford, New York, 2002.
- B. Razavi. Design of Analog CMOS Integrated Circuits. McGraw -Hill, New York, 2001.
- P. Jespers, B. Murmann. Systematic Design of Analog CMOS Circuits: Using Pre-Computed Lookup. Cambridge Press. 2017.

<p align="justify">All the circuits will be designed in house without re-using other IPs. Preliminar versions of the OpAmp and digital control circuits were designed and good results were obtained by simulations using sky130 pdk. Next steps will be to refine those designs, as well as to simulate with corners. Also, the digital part (shift register + SPI) will be implemented using openlane flow. Then, all the blocks will be routed on a top layout to be fully verified.</p>
