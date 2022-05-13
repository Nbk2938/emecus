

/*
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
*/
/*void resetCommandTimeout(){
  
  tic1.resetCommandTimeout();
  tic2.resetCommandTimeout();
  tic3.resetCommandTimeout();
  tic4.resetCommandTimeout();
  tic5.resetCommandTimeout();
  tic6.resetCommandTimeout();
  
}*/

// Delays for the specified number of milliseconds while
// resetting the Tic's command timeout so that its movement does
// not get interrupted by errors.
/*void delayWhileResettingCommandTimeout(uint32_t ms){
  uint32_t start = millis();
  do
  {
    resetCommandTimeout();
  } while ((uint32_t)(millis() - start) <= ms);
}*/

void stepped(char a[], int len){
 
 //Serial.write(b);
  
  for(int i = 0; i < len; i++){
    //resetCommandTimeout();
    //tic6.haltAndSetPosition(0);
    //tic6.exitSafeStart();
    
    if(a[i] == 'D'){                            //R
      tic4.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);  //delay(whaitTillFinished)  ?????
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 'E'){                       //R'
      tic4.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 'F'){                       //R2
      tic4.setTargetPosition(800);       
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == 'G'){                      //L
      tic6.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 'H'){                     //L'
      tic6.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 'I'){                     //L2
      tic6.setTargetPosition(800);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == 'L'){                     //F
      tic3.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 'M'){                     //F'
      tic3.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 'N'){                     //F2
      tic3.setTargetPosition(800);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == 'O'){                     //B
      tic5.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 'P'){                    //B'
      tic5.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 'Q'){                    //B2
      tic5.setTargetPosition(800);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == 'R'){                    //U
      tic2.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 'S'){                   //U'
      tic2.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 'T'){                   //U2
      tic2.setTargetPosition(800);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == 'U'){                   //D
      tic1.setTargetPosition(-400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 'V'){                  //D'
      tic1.setTargetPosition(400);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == 'Z'){                 //D2
      tic1.setTargetPosition(800);
      delay(whaitTillFinished); //delayWhileResettingCommandTimeout(whaitTillFinished * 2);
      tic1.haltAndSetPosition(0);
    }
    /*else{
      resetCommandTimeout();
    }*/
  
 }
}

void FillLEDsFromPaletteColors( uint8_t colorIndex)
{
    uint8_t brightness = 255;
    for( int i = 0; i < NUM_LEDS; i++) {
        leds[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
        colorIndex += 3;
    }
}

void ChangePalettePeriodically()
{
    uint8_t secondHand = (millis() / 1000) % 60;
    static uint8_t lastSecond = 99;
    
   if( lastSecond != secondHand) {
        lastSecond = secondHand;
        if( secondHand ==  0)  { SetupBlackAndWhiteStripedPalette()/*currentPalette = RainbowColors_p*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 10)  { SetupBlackAndWhiteStripedPalette()/*currentPalette = RainbowStripeColors_p*/;    currentBlending = NOBLEND; }
        if( secondHand == 15)  { SetupBlackAndWhiteStripedPalette()/*currentPalette = RainbowStripeColors_p*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 20)  { SetupBlackAndWhiteStripedPalette()/*SetupPurpleAndGreenPalette()*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 25)  { SetupBlackAndWhiteStripedPalette()/*SetupTotallyRandomPalette()*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 30)  { SetupBlackAndWhiteStripedPalette();    currentBlending = NOBLEND; }
        if( secondHand == 35)  { SetupBlackAndWhiteStripedPalette();    currentBlending = LINEARBLEND; }
        if( secondHand == 40)  { SetupBlackAndWhiteStripedPalette()/*CloudColors_p*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 45)  { SetupBlackAndWhiteStripedPalette()/*PartyColors_p*/;    currentBlending = LINEARBLEND; }
        if( secondHand == 50)  { SetupBlackAndWhiteStripedPalette()/*currentPalette = myRedWhiteBluePalette_p*/;    currentBlending = NOBLEND; }
        if( secondHand == 55)  { SetupBlackAndWhiteStripedPalette()/*currentPalette = myRedWhiteBluePalette_p*/;    currentBlending = LINEARBLEND; }
    }
}

void SetupBlackAndWhiteStripedPalette()
{
    // 'black out' all 16 palette entries...
    fill_solid( currentPalette, 16, CRGB::White/*Black*/);
    // and set every fourth one to white.
    currentPalette[0] = CRGB::White;
    currentPalette[4] = CRGB::White;
    currentPalette[8] = CRGB::White;
    currentPalette[12] = CRGB::White;
    
}

//    /*
void SetupTotallyRandomPalette()
{
    for( int i = 0; i < 16; i++) {
        currentPalette[i] = CHSV( random8(), 255, random8());
    }
}

void SetupPurpleAndGreenPalette()
{
    CRGB purple = CHSV( HUE_PURPLE, 255, 255);
    CRGB green  = CHSV( HUE_GREEN, 255, 255);
    CRGB black  = CRGB::Black;
    
    currentPalette = CRGBPalette16(
                                   green,  green,  black,  black,
                                   purple, purple, black,  black,
                                   green,  green,  black,  black,
                                   purple, purple, black,  black );
}

const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM =
{
    CRGB::Red,
    CRGB::Gray, // 'white' is too bright compared to red and blue
    CRGB::Blue,
    CRGB::Black,
    
    CRGB::Red,
    CRGB::Orange,
    CRGB::Blue,
    CRGB::Black,
    
    CRGB::Red,
    CRGB::Red,
    CRGB::Gray,
    CRGB::Gray,
    CRGB::Blue,
    CRGB::Blue,
    CRGB::Black,
    CRGB::Black
};
