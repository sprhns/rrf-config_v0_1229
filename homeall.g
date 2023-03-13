; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.1-LPC-STM32+2 on Tue Dec 28 2021 22:27:57 GMT+0100 (Central European Standard Time)
G91                   ; relative positioning
G1 H2 Z5 F6000        ; lift Z relative to current position
G1 H1 X{move.axes[0].max + 5} Y{move.axes[1].max + 5} F1800 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X{move.axes[0].max + 5}            ; home X axis
G1 H1 Y{move.axes[1].max + 5}            ; home Y axis
G1 X-5 Y-5 F6000      ; go back a few mm
G1 H1 X{move.axes[0].max + 5} F360       ; move slowly to X axis endstop once more (second pass)
G1 H1 Y{move.axes[1].max + 5} F360; then move slowly to Y axis endstop
G1 H1 Z-125 F450 ; move Z down until the endstop is triggered
G1 H2 Z5 F6000    ; lift Z relative to current position
G1 H1 Z-10 F360   ; move Z down slowly until the endstop is triggered
; G92 Z{move.axes[2].min}            ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
G91              ; relative positioning
G1 Z{abs(move.axes[2].min) + 50} F6000       ; lift Z relative to current position
G90              ; absolute positioning

G1 X{move.axes[0].max / 2} Y{move.axes[1].max / 2}
