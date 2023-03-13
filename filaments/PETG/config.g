M118 S"Loading PETG config"

M572 D0 S0.09 								   ; set pressure advance to 0.09 for extruder 0

M307 H1 R2.317 C222.2 D7.35 S1.00 V0.0         ; extruder heater tuned for 245 deg - M303 H1 P1.0 S245 - dragon with silicon cover
M307 H0 R0.427 C352.9 D4.73 S1.00 V0.0		   ; bed tuned for 85 deg - M303 H0 P1.0 S85