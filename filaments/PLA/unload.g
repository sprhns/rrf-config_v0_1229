;M291 P"Please wait while the nozzle is being heated up" R"Unloading PLA" T5  ; Display message
;T0
;G10 P0 S220 															 	  ; Set current tool temperature to 220C
;M116 																		  ; Wait for the temperatures to be reached
;M291 P"Extrude filament to avoid blob..." R"Unloading PLA" T5 		          ; Display new message
;G92 E0 																	      ; Reset the position of the extruder
;G1 E15 F100																	  ; Extrude a short distance before unloading to avoid blob forming
;M291 P"Feeding filament..." R"Unloading PLA" T5 							  ; Display new message
;G92 E0																	      ; Reset the position of the extruder
;G1 E-150 F1600															 	  ; Retract 150 mm of filament at 1600mm/min
;M400																		  ; Wait for moves to complete
;G92 E0 																	      ; Reset the position of the extruder
;M292 																		  ; Hide the message
;G10 S0 																	  	  ; Turn off the heater again

;M291 P"REMOVE FILAMENT NOW" R"Unloading PLA"