;M291 P"Please wait while the nozzle is being heated up" R"Loading PLA" T5 ; Display message
;G10 P0 S210 															  ; Set current tool temperature to 210C
;M116 																	  ; Wait for the temperatures to be reached
;M291 P"Feeding filament..." R"Loading PLA" T5 							  ; Display new message
;G92 E0 																	  ; Reset the position of the extruder
;G1 E50 F600																  ; Feed 50mm of filament at 600mm/min
;G4 P1000																  ; Wait one second;
;G1 E-5 F1600															  ; Retract  5 mm of filament at 1800mm/min
;M400																	  ; Wait for moves to complete
;M292 																	  ; Hide the message
;G10 S0 																	  ; Turn off the heater again