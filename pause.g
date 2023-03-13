; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v3.3.1-LPC-STM32+2 on Tue Dec 28 2021 22:27:58 GMT+0100 (Central European Standard Time)
M83            ; relative extruder moves
G1 E-10 F3600  ; retract 10mm of filament
G90            ; absolute positioning
G1 Z50 F6000     ; lift Z by 50mm
M400
M118 S"Move carriage to the middle back"
G1 X{move.axes[0].max / 2} Y{move.axes[1].max - 5} F6000
