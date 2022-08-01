This Arduino Workspace contains the program that works in paralel to the Rubikscube8 programm on the arduino of my robot.

- it takes the data Recived via serial control
- it makes a simple parity chek
- from the data recived it creates a solution movement array
- it send to the specified driver respectively to the created array what each motor schould do.
- the motor execute each movement
- once the sequence is finisched the arduino sends back a signal to the PC
- it clears all data and clears it's Serial buffer
- after that it whaits for other data
