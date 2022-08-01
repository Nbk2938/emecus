void Hamming(int c[], int oldCheck){  //  chek method of controlling the data recived
  int sizeC = sizeof(c);                 //  similar to GTIN-chekdigit sistem.
  //Serial.write(sizeC);
  int newCheck;
  int sum = 0;
  int multiply [sizeC] ;
      for(int i = 0; i < sizeC; i++){
        if(i % 2 == 0){
          multiply[i] = 1;
        }
        else if(i % 2 == 1){
          multiply[i] = 3;
        }
      }
  for(int i = 0; i < sizeC ; i++){
    sum += c[i] * multiply[i]; 
  }
  newCheck = 10 - (sum % 10);

  if(newCheck = oldCheck){              
    solCorrect = true;
    
  }
  else{                                 
    resetCommandTimeout();
  }
}  

void resetCommandTimeout() //drivers need signal every 1000ms if not reset-comand-timeout error accurs  
{                          //can be turned of or menaged in drivers settings
  tic1.resetCommandTimeout();
  tic2.resetCommandTimeout();
  tic3.resetCommandTimeout();
  tic4.resetCommandTimeout();
  tic5.resetCommandTimeout();
  tic6.resetCommandTimeout();
}

void delayWhileResettingCommandTimeout(uint32_t ms)//Delays for the specified number of milliseconds while
{                                                  //resetting the Tic's command timeout so that its movement does
  uint32_t start = millis();                       //not get interrupted by errors.
  do
  {
    resetCommandTimeout();
  } while ((uint32_t)(millis() - start) <= ms);
}

void stepped(int a[], int count){ //move the specific motors to the specific target position
  for(int i = 0; i< count; i++){  //determined by the values of the array

    if(a[i] == 0){                        //D'
      tic1.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      //delay(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 1){                   //D
      tic1.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 2){                    //U
      tic2.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 3){                    //U'
      tic2.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 4){                   //R
      tic4.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 5){                   //R'
      tic4.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 6){                  //L'
      tic6.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 7){                  //L
      tic6.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 8){                  //F
      tic3.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 9){                  //F'
      tic3.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 10){                 //B'
      tic5.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 11){                 //B
      tic5.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else{
      resetCommandTimeout();
    }
  }
  
}


