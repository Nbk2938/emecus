This Arduino workspace contains the last and most advanced program that i've written for my Arduino in my robot.
It works in paralel to the RUPY python program on my arduino of my robot

it is verry similar to the workspace "SketchIno1" in folder "Arduino" but with some adaptations
- instead of reading numbers in it's buffers it directly reads the MoveString send to it
- The Arduino waits for a specific signal that indicates the end of thje message 
- some changes are applied to the moveString and after each motor is given directions were to move accordingly
