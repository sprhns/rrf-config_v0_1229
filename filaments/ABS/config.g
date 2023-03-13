M118 S"Loading ABS config"

; M572 D0 S0.024 								    ; set pressure advance to 0.024 for extruder 0
; M572 D0 S0.04										; set pressure advance - after line test
; M572 D0 S0.045										; set pressure advance - after prints
M572 D0 S0.035										; set pressure advance - after prints - Olof uses a Dragonfly with LGX Lite with this PA value

M307 H1 R2.317 C222.2 D7.35 S1.00 V0.0         	; extruder heater tuned for 245 deg - M303 H1 P1.0 S245 - dragon with silicon cover
M307 H0 B0 R0.428 C349.9 D4.43 S1.00 V0.00      ; bed tuned for 100 deg - M303 H0 S100 - last tuned 2021-12-30