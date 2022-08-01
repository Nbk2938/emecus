This Arduino workspace contains the last and most advanced program that i've written for my Arduino in my robot.
It works in paralel to the RUBY8 program on my arduino of my robot

improvements to sketchIno1:
- instead of reading numbers in it's buffers it directly reads the bitstring send to it
- the bitstring is encoded in a Hamming code so it controls the string and creates a new bitstring without the parity digits
- The Arduino transforms the bit string in decimal numbers wich define a movement 
- each number is stored in an array. This array is then used to directly indicate to each driver wich movement needs to be made next
- the next steps are the same as in setchIno1 in the arduino directory
