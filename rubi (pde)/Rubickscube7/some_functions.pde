
void concatenateSolution(int partialSolution[]){
  if (solutionArray == null){
      solutionArray = partialSolution;
    }else {
      solutionArray = concat(solutionArray, partialSolution);
    }
}


void sleep(int a){
  try{
    Thread.sleep(a);
   } catch (Exception e){}
}

void sendArray(byte s[]){
  if(s.length > 64){                       
      for(int i = 0; i < 64; i++){               //write to port the first 64 integers (port can't support more)
        port.write(s[i]);
      }
      delay(640);                                //whait till port is clear (astimation off how much  time passes till arduino has read all data )
      for(int i = 64; i <s.length; i++){    //write remaining itegers (assuming that the length of the array is less than 128)
        port.write(s[i]);
      }
    }
    else if(s.length <= 64){
      port.write(s);
    }
}   

int[] addChekNumbers(int []norm){
  
  int bro[] = new int[norm.length + 3];
   bro[0] = norm.length;                          // il primo numero è la lughezza del vettore originale.
  for(int i = 1; i < norm.length + 1 ; i++){
    bro[i] = norm[i-1];                           //ricopio il vettore in quello nuovo spostato di un posto.
    bro[norm.length +1] = checkDigit(norm);       //penultimo numero é un controllo del vettore originale. 
    bro[norm.length +2] = 100;                    //l'ultimo numero serpe ad arduno IDE a capire quando il vettore è finito.
  } 
  
  return bro;
}

int checkDigit(int []c){  // simile a GTIN-chekdigit
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

byte[] intToByte (int []a){
  
  byte b [] = new byte [a.length];
  for(int i = 0; i < b.length; i++){
    b[i] = byte(a[i]);
  }
  return b;
}



/*
void Controllo(){
  
  int a = 0; 
  
  int[] xAxis ={-1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1};
  int[] yAxis ={-1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1, -1, -1, -1, 0, 0, 0, 1, 1, 1};
  int[] zAxis ={-1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1};
  
  for(int i = 0; i<27; i++){
    if(cube[i].x == xAxis[i] && cube[i].y == yAxis[i] && cube[i].z == zAxis[i] ){
      if(cube[i].faces[2].normal.y == 1){
        a = a + 1;
      }
    }
  }
  
  
  println(a);
  
  
  
} */
