
String decToBinary(int n){ // decimal to binary
  String out = "";
  int binaryNum[10];
  int i=0;
  while ( n > 0){
    binaryNum[i] = n % 2;
    n = (int)n/2;
    i++;
  }
  for(int j = 9 ;j >= 0; j--){
    out += binaryNum[j];  
  }
  return out;
}

String binaryToDec(String str){ // binnary ti decimal
  String sum;

  if(str == "00000000"){
    sum = "0";
  }else if(str == "00000001"){
    sum = "1";
  }else if(str == "00000010"){
    sum = "2";
  }else if(str == "00000011"){
    sum = "3";
  }else if(str == "00000100"){
    sum = "4";
  }else if(str == "00000101"){
    sum = "5";
  }else if(str == "00000110"){
    sum = "6";
  }else if(str == "00000111"){
    sum = "7";
  }else if(str == "00001000"){
    sum = "8";
  }else if(str == "00001001"){
    sum = "9";
  }else if(str == "00001010"){
    sum = "10";
  }else if(str == "00001011"){
    sum = "11";
  }
  return sum;
}

String Xor(String pos_one []){ // xor function 
  String paritybits = "";
  for(int i=0; i< 10;i++){
    int ones = 0;
    for(int j=0;j< sizeof(pos_one);j++){
      if(pos_one[j][i] == '1'){
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

bool Hamming(char bit_list [],int leng){  // chek method for controlling the data recived

  bool total_parity;
  int num_ones = 0;
  
  for(int i= 0; i<leng-1;i++){
    if( bit_list[i] == '1'){
      num_ones += 1;
    }  
  }
  if(num_ones % 2 == 0){
    total_parity = true;
  }
  else{
    total_parity = false;
  }

  String pos [num_ones];
  int count = 0;
  for(int i=1;i<leng-1;i++){
    if(bit_list[i] == '1'){
      pos[count] = decToBinary(i);
      count++;
    }
  }
  String parity = Xor(pos);
  if(parity != "0000000000"){ // if xor(position of one bits) = 0 -> message is good for processing, no errors detected
    total_parity = false;
  }
  return total_parity;
}  

void stepped(String a[], int count){
  
  for(int i = 0; i< count - 1; i++){  //blue face is the front side         //WTF count - 1 ?????????????????????????????????????
 
    if(a[i] == "0"){                        //D'
      tic1.setTargetPosition(400);
      delay(whaitTillFinished); 
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == "1"){                   //D
      tic1.setTargetPosition(-400);
      delay(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == "2"){                    //U
      tic2.setTargetPosition(-400);
      delay(whaitTillFinished); 
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == "3"){                    //U'
      tic2.setTargetPosition(400);
      delay(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == "4"){                    //R
      tic4.setTargetPosition(-400);
      delay(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == "5"){                   //R'
      tic4.setTargetPosition(400);
      delay(whaitTillFinished); 
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == "6"){                   //L'
      tic6.setTargetPosition(400);
      delay(whaitTillFinished); 
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == "7"){                  //L
      tic6.setTargetPosition(-400);
      delay(whaitTillFinished); 
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == "8"){                  //F
      tic3.setTargetPosition(-400);
      delay(whaitTillFinished); 
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == "9"){                  //F'
      tic3.setTargetPosition(400);
      delay(whaitTillFinished); 
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == "10"){                 //B'
      tic5.setTargetPosition(400);
      delay(whaitTillFinished); 
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == "11"){                 //B
      tic5.setTargetPosition(-400);
      delay(whaitTillFinished); 
      tic5.haltAndSetPosition(0);
    }
    
  }
  if (a[count - 2] == "0"){                           //WTF, whyyyyyy ????????????????????????????
    tic1.setTargetPosition(-400);            //D
    delay(whaitTillFinished); 
    tic1.haltAndSetPosition(0);
  }
  else if(a[count - 2] == "1"){
    tic1.setTargetPosition(400);            //D'
    delay(whaitTillFinished); 
    tic1.haltAndSetPosition(0);
  }
  
  
}




