; Called when a print starts

T0			; Select Tool 0

M220 S100		; Set speed factor back to 100% in case it was changed
M221 S100		; Set extrusion factor back to 100% in case it was changed
M290 R0 S0		; clear babystepping
M106 S0			; Turn part cooling blower off if it is on

; M118 S"Loading filament config"
; M703 ; load filament config.g

G92 E0        ; Reset extruder

; slicer start-code is next