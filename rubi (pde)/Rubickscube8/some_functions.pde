
void concatenateSolution(int partialSolution[]){ // concatenate integer arrays in to one
  if (solutionArray == null){
      solutionArray = partialSolution;
    }else {
      solutionArray = concat(solutionArray, partialSolution);
    }
}


void sleep(int a){ // thread sleep. i'm not using this function 
  try{
    Thread.sleep(a);
   } catch (Exception e){}
}

void sendArray(byte s[]){                         //send byte array
  if(s.length > 64){                       
      for(int i = 0; i < 64; i++){                //write to port the first 64 integers (port can't support more)
        port.write(s[i]);
      }
      delay(640);                                 //whait till port is clear (astimation off how much the time passes till arduino has read all data )
      for(int i = 64; i <s.length; i++){          //write remaining itegers (assuming that the length of the array is less than 128)
        port.write(s[i]);
      }
    }
    else if(s.length <= 64){
      port.write(s);
    }
}   

int[] addHammingPrity(int []norm){ // add parity control to the message
  
  int hamming[] = new int[norm.length + 3];
   hamming[0] = norm.length;                          //first number is the length of the significant values
  for(int i = 1; i < norm.length + 1 ; i++){
    hamming[i] = norm[i-1];                           
    hamming[norm.length +1] = parityDigit(norm);       //add parity digit 
    hamming[norm.length +2] = 100;                    //last digigt of message
  } 
  
  return hamming;
}

int parityDigit(int []c){  // similar to GTIN-chekdigit
  int parity;
  int sum = 0;
  int hammingArray [] = new int[c.length];
      for(int i = 0; i < c.length; i++){
        if(i % 2 == 0){
          hammingArray[i] = 1;
        }
        else if(i % 2 == 1){
          hammingArray[i] = 3;
        }
      }
  
  for(int i = 0; i < c.length; i++){
    sum += c[i] * hammingArray[i]; 
  }
  parity = 10 - (sum % 10);
  return parity;
}

byte[] intToByte (int []integer){ // int array in to byte array
  
  byte bite [] = new byte [integer.length];
  for(int i = 0; i < bite.length; i++){
    bite[i] = byte(integer[i]);
  }
  return bite;
}

void Text(){ //some text for user interace
  if (counter > scrambled -1) {    
    text(counter - scrambled , 120, 100);
    text("movimenti",160,100);
    text(str(whatch.time()/ 1000.0)  , 120, 130);
    text("secondi",200,130);
  }
  
  if(spacePressed != true){
    text("Schiaccia space bar per mischiare il cubo",-350,-180);
  }
  if(spacePressed == true && startSolution == false){
    text("Execution of a random scramble...",-350,-180);
  }
  if(startSolution == true && keySPressed == false){
    text("Schiaccia 's' per risolvere il cubo di rubik",-350,-180);
  }
  if(keySPressed == true && solved == false){
    text("Risolvendo...",-350,-180);
  }
  if(solved == true){
    text("Risolto",-350,-180);
  }
  
}
