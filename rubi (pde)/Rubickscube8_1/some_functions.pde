
void concatenateSolution(int partialSolution[]){   // concatenate integer arrays in to one
  if (solutionArray == null){
      solutionArray = partialSolution;
    }else {
      solutionArray = concat(solutionArray, partialSolution);
    }
}

void scrambleOnes(){                              // random scramble generator. i'm not using this function

for (int i = 0; i < scrambled +1; i++) {
      int r = int(random(allMoves.length - 6));   // creating random moves 
      scrambledArray [i] = r;
    
      Move m = allMoves[r];
      sequence.add(m);                            //  saving the random moves in an arraylist of moves 
      m.complete();                               //  scrambeling the cube virtually 
    }

  shit++;
  //println(scrambledArray);
}

void takeSolutionOnes() {                         // create solution. i'm not using this function
  solution.createSolution(); 
  //println(solutionArray);
  shit++;
}

void sleep(int a){                                // thread sleep. i'm not using this function
  try{
    Thread.sleep(a);
   } catch (Exception e){}
}

void sendArray(byte s[]){                         //send byte array
  if(s.length > 64){                       
      for(int i = 0; i < 64; i++){                //write to port the first 64 integers (port can't support more)
        port.write(s[i]);
      }
      delay(640);                                 //whait till port is clear (astimation off how much  time passes till arduino has read all data )
      for(int i = 64; i <s.length; i++){          //write remaining itegers (assuming that the length of the array is less than 128)
        port.write(s[i]);
      }
    }
    else if(s.length <= 64){
      port.write(s);
    }
}   

int[] addChekNumbers(Integer []norm){             // add parity control to the message
  
  int bro[] = new int[norm.length + 3];
   bro[0] = norm.length;                          //first number is the length of the significant values
  for(int i = 1; i < norm.length + 1 ; i++){
    bro[i] = norm[i-1];                           
    bro[norm.length +1] = checkDigit(norm);       //add parity digit 
    bro[norm.length +2] = 100;                    //last digigt of message
  } 
  
  return bro;
}

int[] addChekNumbers1(int []norm){
  
  int bro[] = new int[norm.length + 3];
   bro[0] = norm.length;                          
  for(int i = 1; i < norm.length + 1 ; i++){
    bro[i] = norm[i-1];                           
    bro[norm.length +1] = checkDigit1(norm);      
    bro[norm.length +2] = 100;                    
  } 
  
  return bro;
}

int checkDigit(Integer []c){                      // similar to GTIN-chekdigit
  int chek;
  int sum = 0;
  int multiply [] = new int[c.length];
      for(int i = 0; i < c.length; i++){
        if(i % 2 == 0){
          multiply[i] = 1;
        }
        else if(i % 2 == 1){
          multiply[i] = 3;
        }
      }
  
  for(int i = 0; i < c.length; i++){
    sum += c[i] * multiply[i]; 
  }
  chek = 10 - (sum % 10);
  return chek;
}

int checkDigit1(int []c){                       // similar to GTIN-chekdigit
  int chek;
  int sum = 0;
  int multiply [] = new int[c.length];
      for(int i = 0; i < c.length; i++){
        if(i % 2 == 0){
          multiply[i] = 1;
        }
        else if(i % 2 == 1){
          multiply[i] = 3;
        }
      }
  
  for(int i = 0; i < c.length; i++){
    sum += c[i] * multiply[i]; 
  }
  chek = 10 - (sum % 10);
  return chek;
}

byte[] intToByte (int []a){                    // int array in to byte array
  
  byte b [] = new byte [a.length];
  for(int i = 0; i < b.length; i++){
    b[i] = byte(a[i]);
  }
  return b;
}
                                  
void showSequence(){ //user input scramble
  String fuls;
  String fuld;
  String fulf;
  //String fulg;
  fuls = "";
  fuld = "";
  fulf = "";
  //fulg = "";
  
  int c = sequence.size();
  
  if(c < 30){
    for(int i = 0 ; i < c; i++){
      Move s = sequence.get(i) ;
      fuls += s + " , ";
    }
    text(fuls , -370, 170);
  }
  else if(c > 29 && c < 60){
    for(int i = 0 ; i < 30; i++){
      Move s = sequence.get(i) ;
      fuls += s + " , ";
    }
    text(fuls , -370, 170);
    for(int i = 30 ; i < c; i++){
      Move s = sequence.get(i) ;
      fuld += s + " , ";
    }
    text(fuld , -370, 190);
  }
  else if(c > 59 && c < 90){
    for(int i = 0 ; i < 30; i++){
      Move s = sequence.get(i) ;
      fuls += s + " , ";
    }
    text(fuls , -370, 170);
    for(int i = 30 ; i < 60; i++){
      Move s = sequence.get(i) ;
      fuld += s + " , ";
    }
    text(fuld , -370, 190);
    for(int i = 60 ; i < c; i++){
      Move s = sequence.get(i) ;
      fulf += s + " , ";
    }
    text(fulf , -370, 210);
  }
  else
  {
    for(int i = 0 ; i < 30; i++){
      Move s = sequence.get(i) ;
      fuls += s + " , ";
    }
    text(fuls , -370, 170);
    for(int i = 30 ; i < 60; i++){
      Move s = sequence.get(i) ;
      fuld += s + " , ";
    }
    text(fuld , -370, 190);
    for(int i = 60 ; i < c; i++){
      Move s = sequence.get(i) ;
      fulf += s + " , ";
    }
    text(fulf , -370, 210);
  }
  
  
 
  
     //println("la sequenza attuale é: ");
     //println(sequence);
     //println(sequenceInToNubers);
     //print("sono ");
     //print (sequence.size());
     //print (" movimenti");
     //println(" ");
     //println(" ");
}
