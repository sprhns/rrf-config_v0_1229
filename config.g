; Configuration file for Fly-E3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.1-LPC-STM32+2 on Tue Dec 28 2021 22:27:57 GMT+0100 (Central European Standard Time)

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"highness"                               ; set printer name
M669 K1                                        ; select CoreXY mode

; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
; M569 P0 S1 D2 F2 B1 Y4:1					   ; physical drive 0 goes forwards using default driver timings - using spread cycle and possibly improved timings (Voron Discord inspired)
; M569 P1 S1 D2 F2 B1 Y4:1				       ; physical drive 1 goes forwards using default driver timings - using spread cycle and possibly improved timings (Voron Discord inspired)
M569 P0 S1 D2                	               ; physical drive 0 goes forwards using default driver timings - using spread cycle
M569 P1 S1 D2   		                       ; physical drive 1 goes forwards using default driver timings - using spread cycle
M569 P2 S0 D2                                  ; physical drive 2 goes backwards using default driver timings - using spread cycle
M569 P3 S1 D2                                  ; physical drive 3 goes forwards using default driver timings - using spread cycle
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 I1                                ; configure microstepping with interpolation
M350 E32 Z32 I0                                ; configure microstepping without interpolation
M92 X80.00 Y80.00 Z800.00 E1146.93878          ; set steps per mm - Bondtech LGX Lite at 16 msteps: 562 steps | 32 msteps: 1124 steps | current value calibrated
M566 X360.00 Y360.00 Z60.00 E120.00 P0         ; set maximum instantaneous speed changes (mm/min) - default Klipper conf for A/B is 6 mm/s (x 60) = 300 mm/min
M203 X12000.00 Y12000.00 Z900.00 E1200.00      ; set maximum speeds (mm/min)
M201 X4000.00 Y4000.00 Z45.00 E1000.00         ; set accelerations (mm/s^2)

; Adjust driver sense resistor value - Change to M569.9 in the next RRF release
M569.8 P0 R0.11
M569.8 P1 R0.11
M569.8 P2 R0.11
M569.8 P3 R0.11

; M906 X1200 Y1200 Z720 I30                      ; set motor currents (mA) and motor idle factor in per cent - LDO A/B max current: 1684 mA
M906 X700 Y700 Z520 I30                        ; set motor currents (mA) and motor idle factor in per cent - LDO A/B max current: 1684 mA
M906 E700 I30                                  ; set motor currents (mA) - Bondtech LGX Lite - LDO Motor max 650 mA (currently at 500 * 1.414)
M84 S30                                        ; Set idle timeout

; Axis Limits                        
; M208 X120 Y120 Z110 S0                         ; set axis maxima
; M208 X0 Y0 S1    						   ; set axis minima 
; M208 Z-0.02 S1

; z height for Phaetus nozzle: -0.02
M208 X0:120 Y0:120 Z-0.14:114                  ; set axis limits - LDO nozzle | the smaller the number (mathematically) the higher the distance from the bed


; Endstops
M574 X2 S1 P"xstop"                            ; configure switch-type (e.g. microswitch) endstop for high end on X via pin xstop
M574 Y2 S1 P"ystop"                            ; configure switch-type (e.g. microswitch) endstop for high end on Y via pin ystop
M574 Z1 S1 P"zstop"                            ; configure switch-type (e.g. microswitch) endstop for low end on Z via pin zstop

; Z-Probe
M558 P0 H5 F600 T6000                          ; disable Z probe but set dive height, probe speed and travel speed

; Bed screws
M671 X5:60:115 Y115:5:115 P0.5 				   ; adjusting screws at rear left (5,115), front middle (60,5) and rear right (115,115), thread pitch 0.5mm

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B3950 ; configure sensor 0 as thermistor on pin bedtemp - Keenovo 100x100 24 V bed heater with NTC 100K thermistor (Beta 25/50 3950K) https://www.keenovo.com/NTC-Thermistor-R-T-Table.pdf
M950 H0 C"bed" T0                              ; create bed heater output on bed and map it to sensor 0
M307 H0 B0 S1.00                               ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                        ; map heated bed to heater 0
M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
M308 S1 P"e0temp" Y"thermistor" T103180.0      ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S300                                   ; set temperature limit for heater 1 to 300C

; Fans
; part cooling
M950 F0 C"fan0" Q65535                         ; create fan 0 on pin fan0 and set its frequency - w/ part cooling board
; M950 F0 C"fan0" Q10                            ; create fan 0 on pin fan0 and set its frequency - w/o part cooling board
M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off - min fan speed 15%

; hotend fan
M950 F1 C"fan1" Q10                            ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T50 S235                         ; set fan 1 value. Thermostatic control is turned on


; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined
T0 											   ; select tool 0

M703 ; load filament config.g