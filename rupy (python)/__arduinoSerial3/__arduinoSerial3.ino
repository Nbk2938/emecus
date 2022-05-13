#include <Tic.h>     //libreria driver
#include <FastLED.h>   //libreria led

#ifdef SERIAL_PORT_HARDWARE_OPEN
#define ticSerial SERIAL_PORT_HARDWARE_OPEN
#else
#include <SoftwareSerial.h>
SoftwareSerial ticSerial();
#endif

TicSerial tic1(Serial1, 1);
TicSerial tic2(Serial1, 2);
TicSerial tic3(Serial1, 3);
TicSerial tic4(Serial1, 4);
TicSerial tic5(Serial1, 5);
TicSerial tic6(Serial1, 6);

#define LED_PIN1     51   //variabili per controllo led
#define LED_PIN2     50
#define NUM_LEDS    15
#define BRIGHTNESS  70
#define LED_TYPE    WS2811
#define COLOR_ORDER GRB
CRGB leds[NUM_LEDS];
#define UPDATES_PER_SECOND 100
CRGBPalette16 currentPalette;
TBlendType    currentBlending;
extern CRGBPalette16 myRedWhiteBluePalette;
extern const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM;
int pin1 = 49;
int pin2 = 48;

int whaitTillFinished = 180;   //tempo stimato per una rotazione  [in millisecondi] 
                               //non va bene tropva altra soluzione esistono mezze rotazioni come anche quarti di rotazioni      
int count = 0;           
String values[50];
String bus;

boolean solCorrect = false; 
boolean onlyOneTime = false;

//-----------------------------------------------------------------------------------------------

void setup()  {
  Serial.begin(9600);
  Serial.setTimeout(0.1);
  ticSerial.begin(9600);
  
    pinMode(49,OUTPUT);  //output di 5V per ledstrip
    pinMode(48,OUTPUT);
    digitalWrite(49, HIGH);
    digitalWrite(48, HIGH);
    
  delay(20);
  
  
  tic1.haltAndSetPosition(0);
  tic2.haltAndSetPosition(0);
  tic3.haltAndSetPosition(0);
  tic4.haltAndSetPosition(0);
  tic5.haltAndSetPosition(0);
  tic6.haltAndSetPosition(0);
  
  tic1.exitSafeStart();
  tic2.exitSafeStart();
  tic3.exitSafeStart();
  tic4.exitSafeStart();
  tic5.exitSafeStart();
  tic6.exitSafeStart();
  
  delay(880); // power-up safety delay
    
    FastLED.addLeds<LED_TYPE, LED_PIN1, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
    FastLED.addLeds<LED_TYPE, LED_PIN2, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
    FastLED.setBrightness(  BRIGHTNESS );
    
    //currentPalette = RainbowColors_p;
    currentBlending = LINEARBLEND;
} 

//-----------------------------------------------------------------------------------------------

void loop() {   
  //resetCommandTimeout();
  
  if(Serial.available() > 0){
    delay(30);                    //so that it reads the entire bus 
    String incomingValue = Serial.readString();   
    bus = incomingValue;
    Serial.print(bus);
    createAndControlFunc(bus);
      
    /*if(incomingValue == "A"){
      Serial.print('B');  
    }
    else if(incomingValue != "C"){
      //Serial.print(incomingValue);
      values[count] = incomingValue;
      Serial.print(incomingValue);
      count++;
    }
    else if(incomingValue == "C"){ //se legge c allora puoi eseguire le funzioni.
      Serial.print('D');
      createAndControlFunc(values); 
      Serial.flush();
    }*/
  }  

  ChangePalettePeriodically(); // mostra e colora singoli led rispettto alla funzione FillLED...() 
    
  static uint8_t startIndex = 0;
  startIndex = startIndex + 1;     //direzione speed 
  FillLEDsFromPaletteColors( startIndex);
  FastLED.show();
  FastLED.delay(1000 / UPDATES_PER_SECOND);
  
} 

//---------------------------------------------------------------------------------------------

void(*resetFunc) (void) = 0; //reset all data  


void  createAndControlFunc(String d){ // funzione centrale  
  
   int str_len = d.length() + 1;
   char char_array [str_len];
   d.toCharArray(char_array, str_len);
   
   stepped(char_array, str_len); 
   Serial.flush(); 
   //bus = null;
   //resetFunc();    
   
}
