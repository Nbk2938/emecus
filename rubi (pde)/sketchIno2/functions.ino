
String decToBinary(int n){
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
String binaryToDec(String str){
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

String Xor(String pos_one []){
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

bool Hamming(char bit_list [],int leng){  //  chek method of controlling the data recived

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
  //Serial.println(parity);
  if(parity != "0000000000"){
    total_parity = false;
  }
  return total_parity;
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

void stepped(String a[], int count){
 //int b = sizeof(a);
 //Serial.write(b);
  
  for(int i = 0; i< count; i++){  //blue face is the front side

    if(a[i] == "0"){                        //D'
      tic1.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished); 
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == "1"){                   //D
      tic1.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic1.haltAndSetPosition(0);
    }
    else if(a[i] == "2"){                    //U
      tic2.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == "3"){                    //U'
      tic2.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic2.haltAndSetPosition(0);
    }
    else if(a[i] == "4"){                    //R
      tic4.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == "5"){                   //R'
      tic4.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic4.haltAndSetPosition(0);
    }
    else if(a[i] == "6"){                   //L'
      tic6.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == "7"){                  //L
      tic6.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic6.haltAndSetPosition(0);
    }
    else if(a[i] == "8"){                  //F
      tic3.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == "9"){                  //F'
      tic3.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic3.haltAndSetPosition(0);
    }
    else if(a[i] == "10"){                 //B'
      tic5.setTargetPosition(400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else if(a[i] == "11"){                 //B
      tic5.setTargetPosition(-400);
      delayWhileResettingCommandTimeout(whaitTillFinished);
      tic5.haltAndSetPosition(0);
    }
    else{
      resetCommandTimeout();
    }
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
