# ZX81-Internal-16K-Expansion 'No Wobbly Edition'
This little PCB is a 'quick and dirty, no wobbly' 16K internal memory expansion for the Sinclair ZX81. The ZX81 is a very simple computer and only has 1KB of memory, which could be expanded to 16KB by using a RAMpack. This had to be connected to the expansion port on the back of the computer. It is this RAMpack that was notorious for the infamous 'RAMpack wobble', a certain movement of the computer would cause a crash, resulting in losing work, etc. 

That is where the 'No Wobbly Edition' comes in, it replaces the internal 1KB SRAM with a 32KB SRAM, of which 16KB is usable. All of the necessary re-routing of address lines is done on the PCB, there is no need to cut tracks on the ZX81 PCB or bending of pins, etc. It is easily reversible by inserting a 6116 SRAM in the socket.

This expansion also has a 10K resistor between pin 28 (+5 volt) and pin 27 (WE) for HRG8 (High Res) compatibility.

# The PCB (Rev. A):
![alt text](https://github.com/redhawk668/ZX81-Internal-16K-Expansion/blob/main/Rev.%20A/ZX81%20Intern%2016K.png)

# Billing of Materials:
|Qty  |Value  |Component            |Package  |PCB  |
|-----|-------|---------------------|---------|-----|
| 1x  | 10K   | Resistor            | 1206    | R1  |
| 1x  | 0.1uF | Ceramic Capacitor   | 1206    | C1  |
| 1x  |       | 62256 32Kx8 SRAM    | SOP-28  | U1  |
|     |       | Pin Socket Strip    |         |     |
-----------------------------------------------------

# Installation:
First desolder the old RAM chips. Clear out the holes and solder a 28 pin socket on the ZX81 PCB. There is jumper link on the ZX81 PCB, this has to be set to LK2 (L2 on Issue 1 PCB's). This routes address line A10 to the corresponding pin on the memory expansion. Solder wires to the address lines A11, A12 & A13 on the memory expansion PCB. 
- Solder the other end of the A11 wire to the cathode of D1
- Solder the other end of the A12 wire to the cathode of D3
- Solder the other end of the A13 wire to the cathode of D5

Insert the memory expansion into the socket.

It should look like this (installed on Issue 3 PCB):

![alt text](https://github.com/redhawk668/ZX81-Internal-16K-Expansion/blob/main/IMG_20210510_172720.jpg)

Re-assemble the ZX81 and turn it on, it should take a few seconds before the 'K' appears.

To test the memory expansion, run the following command:

PRINT PEEK 16388+256*PEEK 16389

Result should be 32768.

# ZX81 - Internal-32K-Expansion 'vLA81 Edition'
Rev. B of the memory expansion. The vLA81 is an awesome replacement for the ZX81 ULA. It has all the needed logic in it's CPLD to do all the decoding to give the ZX81 the full 32KB. It is very similar to the 16KB expansion, it only needs an extra Address Line (A14) to make the magic happen. 

# The PCB (Rev. B):
![alt text](https://github.com/redhawk668/ZX81-Internal-16K-Expansion/blob/main/Rev.%20B%20-%20vLA81/ZX81%20Intern%2032K.png)

# Billing of Materials:
Same as Rev. A

# Installation:
Same as the 16KB expansion. It only needs one more Address Line connected.

Address Line A14 must be soldered to the cathode of D7, the rest is the same as Rev. A.

Connect pin 3 of the Z80 (A13) to pin 35 of the vLA81. Normally this is reserved for the clock signal from the resonator. The vLA81 has it's own clock crystal, so this pin has another purpose.

# Memory configurations:
- Both dipswitches USR0/USR1 to off: 16KB
- Dipswitch USR0 to on and USR1 to off: 16 - 48KB, suitable for hires programs
- Dipswitch USR0 to off and USR1 to on: 8K - 40K, provides lower 32K memory map for WRX hires programs
- Both dipswitches to on, provides soft config.

To activate the full 32KB, the ZX81 has to be told to raise it's RAMTOP, normally it will only see the first 16KB.

Run the following commands:

POKE 16389,255 followed by a NEW command. This will raise the RAMTOP and the ZX81 will now be able to use the full 32KB.

Depending on the dipswitches, the command:

PRINT PEEK 16388+256*PEEK 16389

Will result in 49152 or 40960.








