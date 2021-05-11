# ZX81-Internal-16K-Expansion 'No Wobbly Edition'
This litlle PCB is a 'quick and dirty, no wobbly' 16K internal memory expansion for the Sinclair ZX81. The ZX81 is a very simple computer and only has 1KB of memory, which could be expanded to 16KB by using a RAMpack. This had to be connected to the expansion port on the back of the computer. It is this RAMpack that was notorious for the infamous 'RAMpack wobble', a certain movement of the computer would cause a crash, resulting in losing work, etc. 

That is where the 'No Wobbly Edition' comes in, it replaces the internal 1KB SRAM with a 32KB SRAM, of which 16KB is usable. All of the necessary re-routing of address lines is done on the PCB, so need to cut tracks on the ZX81 PCB or bending of pins, etc. Easily reversible.

# The PCB:
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

It should look like this:

![alt text](https://github.com/redhawk668/ZX81-Internal-16K-Expansion/blob/main/IMG_20210510_172720.jpg)

Re-assemble the ZX81 and turn it on, it should take a few seconds before the 'K' appears.

To test the memory expansion, run the following program:

10 FOR N=16640 TO 65536 STEP 256
20 POKE N,0
30 IF PEEK N<>0 THEN GOTO 50
40 NEXT N
50 PRINT "MEMORY SIZE ";(N/1024)-16;"KB"

If all goes well, it should report 16KB.



