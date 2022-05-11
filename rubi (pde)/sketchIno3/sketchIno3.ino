#include <Tic.h>     //libreria driver
#include <FastLED.h>   //libreria led

#ifdef SERIAL_PORT_HARDWARE_OPEN
#define ticSerial SERIAL_PORT_HARDWARE_OPEN
#else
#include <SoftwareSerial.h>
SoftwareSerial ticSerial();
#endif

TicSerial tic1(Serial1, 1); //nominazione dei led
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
CRGB leds1[NUM_LEDS];
CRGB leds2[NUM_LEDS];
#define UPDATES_PER_SECOND 100
CRGBPalette16 currentPalette;
TBlendType    currentBlending;
extern CRGBPalette16 myRedWhiteBluePalette;
extern const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM;
int pin1 = 49;
int pin2 = 48;

int whaitTillFinished = 120;   //tempo stimato per una rotazione  [in millisecondi]        
int currentValue = 0;
int values[130];

boolean solCorrect = false; 
boolean onlyOneTime = false;

//-----------------------------------------------------------------------------------------------

void setup()  {
  Serial.begin(9600);
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
    
    FastLED.addLeds<LED_TYPE, LED_PIN1, COLOR_ORDER>(leds1, NUM_LEDS).setCorrection( TypicalLEDStrip );
    FastLED.addLeds<LED_TYPE, LED_PIN2, COLOR_ORDER>(leds2, NUM_LEDS).setCorrection( TypicalLEDStrip );
    FastLED.setBrightness(  BRIGHTNESS );
    
    //currentPalette = RainbowColors_p;
    //currentBlending = LINEARBLEND;
} 

//-----------------------------------------------------------------------------------------------

void loop() {   
  resetCommandTimeout();
  
  if(Serial.available()){
    int incomingValue = Serial.read();   
    values[currentValue] = incomingValue;
    currentValue++;
    if(incomingValue == 100){  //se legge 100 allora puoi eseguire le funzioni.
      createAndControlFunc(values);
    }
  }  

  leds1[0] = CRGB::  Green; FastLED.show();
  leds1[1] = CRGB::  Green; FastLED.show();
  leds1[2] = CRGB::  Green; FastLED.show();
  leds1[3] = CRGB::  Green; FastLED.show();
  leds1[4] = CRGB::  Green; FastLED.show();
  leds1[5] = CRGB::  Orange; FastLED.show();
  leds1[6] = CRGB::  Orange; FastLED.show();
  leds1[7] = CRGB::  Orange; FastLED.show();
  leds1[8] = CRGB::  Orange; FastLED.show();
  leds1[9] = CRGB::  Orange; FastLED.show();
  leds1[10] = CRGB::  Blue; FastLED.show();
  leds1[11] = CRGB::  Blue; FastLED.show();
  leds1[12] = CRGB::  Blue; FastLED.show();
  leds1[13] = CRGB::  Blue; FastLED.show();
  leds1[14] = CRGB::  Blue; FastLED.show();
  

  leds2[0] = CRGB::  White; FastLED.show();
  leds2[1] = CRGB::  White; FastLED.show();
  leds2[2] = CRGB::  White; FastLED.show();
  leds2[3] = CRGB::  White; FastLED.show();
  leds2[4] = CRGB::  White; FastLED.show();
  leds2[5] = CRGB::  Red; FastLED.show();
  leds2[6] = CRGB::  Red; FastLED.show();
  leds2[7] = CRGB::  Red; FastLED.show();
  leds2[8] = CRGB::  Red; FastLED.show();
  leds2[9] = CRGB::  Red; FastLED.show();
  leds2[10] = CRGB::  Yellow; FastLED.show();
  leds2[11] = CRGB::  Yellow; FastLED.show();
  leds2[12] = CRGB::  Yellow; FastLED.show();
  leds2[13] = CRGB::  Yellow; FastLED.show();
  leds2[14] = CRGB::  Yellow; FastLED.show();
 
  
} 

//---------------------------------------------------------------------------------------------

void(*resetFunc) (void) = 0; //reset all data  


void  createAndControlFunc(int d[]){ // funzione centrale  
  int a = d[0];                      // il primo numero che arriva tramite la porta seriale é la lunghezza del vettore che abbiamo bisogno
  int parity = d[a+1];            // l'ultimo numero controlla la parità totale
  int sol [a];                   // dichiarazione del vettore locale "sol"
  
  for(int i = 0; i < a ; i++){ //ridimenzionamento del vettore ricevuto tramite la porta seriale
    sol[i] = d[i+1];           // inizializzazione del vettore locale "sol"
  }

   onlyOneTime = true;   // garantisce che il processo seguente viene fatto una sola volta
   Hamming(sol,parity);  // controllo del vettore: ricerca di errori e eventuale correzzione

   if(solCorrect = true) { // se il vettore "sol" soddisfa il controllo di parita  
    stepped(sol, a); // controlla le rotazione che ogni motore deve eseguire passando per i valori del vettore controllato in precedenza
    Serial.write(100); // manda un segnale a processing che determina la fine dell'esecuzione dei movimenti
   }
   
   Serial.flush(); //cancella tutto quello che che rimane nel buffer seriale
   resetFunc();    //reset di tutti i dati 
   
}
