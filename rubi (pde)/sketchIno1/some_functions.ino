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

  if(newCheck = oldCheck){              // blink green led if correct
    solCorrect = true;
    
  }
  else{                                 // blink red led if not
    resetCommandTimeout();
  }
}  

void resetCommandTimeout()
{
  tic1.resetCommandTimeout();
  tic2.resetCommandTimeout();
  tic3.resetCommandTimeout();
  tic4.resetCommandTimeout();
  tic5.resetCommandTimeout();
  tic6.resetCommandTimeout();
}

// Delays for the specified number of milliseconds while
// resetting the Tic's command timeout so that its movement does
// not get interrupted by errors.
void delayWhileResettingCommandTimeout(uint32_t ms)
{
  uint32_t start = millis();
  do
  {
    resetCommandTimeout();
  } while ((uint32_t)(millis() - start) <= ms);
}

void stepped(int a[], int count){
 //int b = sizeof(a);
 //Serial.write(b);
  
  for(int i = 0; i< count; i++){

    if(a[i] == 0){
      tic1.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 1){
      tic1.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 2){
      tic2.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 3){
      tic2.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 4){
      tic3.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 5){
      tic3.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 6){
      tic4.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 7){
      tic4.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 8){
      tic5.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 9){
      tic5.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 10){
      tic6.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 11){
      tic6.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else{
      resetCommandTimeout();
    }
  }
  
}
