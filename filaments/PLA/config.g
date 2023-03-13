M118 S"Loading PLA config"

M572 D0 S0.024 								    ; set pressure advance to 0.024 for extruder 0

M307 H1 R2.286 C179.5 D7.16 S1.00 V0.0			; extruder heater tuned for 210 deg - M303 P1.0 H1 S210 - dragon w/ cover
M307 H0 B0 R0.543 C256.4 D3.44 S1.00 V24.0 		; bed tuned for 60 deg - M303 H0 P1.0 S60