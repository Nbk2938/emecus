
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

void send(String s){
  int len = s.length();
  
  port.write(s);
  //println(s);
  //println("");
  
  delay(int(len * 6.55)); // stima approssimativa
  port.write('A');
}   

String binaryString(int []num){
  String bitString = "";
  for(int i=0; i< num.length; i++){
    bitString += binary(num[i], 8);   //using utf-8
  }
  return bitString;
}


String xor(String [] pos){
  String paritybits = "";
  for(int i=0; i< 10;i++){
    int ones = 0;
    for(int j=0;j< pos.length;j++){
      if(pos[j].charAt(i) == '1'){
        ones++;
      }
    }
    if(ones % 2 == 0){
      paritybits += "0";
    }
    else{
      paritybits += "1";
    }
  }
  return paritybits;
}

String hamming(String norm){
  
  int num_of_parity_digits = 1;
  int count = 3;
  int i = 0;
  int no_ones = 0;
  
  while(norm.length() > pow(2, num_of_parity_digits)){
    num_of_parity_digits ++;
  }
  
  char[] bits = new char[norm.length() + num_of_parity_digits +1];
  
  while(count < bits.length){
    float p = log(count)/log(2);
    if(p - int(p) == 0){
      count++;
    }
    else{
      bits[count] = norm.charAt(i);
      if (bits[count] == '1'){
        no_ones++;
      }
      count++;
      i++;
    }
  }
  String [] pos_of_one_bits = new String [no_ones];
  int k = 0;
  for(int j = 0; j < bits.length; j++){
    if(bits[j] == '1'){
        pos_of_one_bits[k] = binary(j,10);
        k++;
      }
  }
  
  if(no_ones % 2 == 0){
    bits[0] = '0';
  }
  else{
    bits[0] = '1';
  }
  //printArray(pos_of_one_bits);
  String parity = xor(pos_of_one_bits);
  if(parity.length() != num_of_parity_digits){
    parity = parity.substring(parity.length() - num_of_parity_digits);
  }
  
  for(int z = 0; z < num_of_parity_digits; z++){
    bits[int(pow(2,z))] = parity.charAt(num_of_parity_digits - z -1);
  }
  //printArray(bits);
  //println(parity);
  //println(no_ones);
  String hamming = String.valueOf(bits);
  return hamming;
}

int parityDigit(int []c){  // simile a GTIN-chekdigit
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

byte[] intToByte (int []integer){
  
  byte bite [] = new byte [integer.length];
  for(int i = 0; i < bite.length; i++){
    bite[i] = byte(integer[i]);
  }
  return bite;
}

void Text(){
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
