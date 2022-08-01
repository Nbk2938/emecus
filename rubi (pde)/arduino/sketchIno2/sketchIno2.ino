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
CRGB leds[NUM_LEDS];
#define UPDATES_PER_SECOND 100
CRGBPalette16 currentPalette;
TBlendType    currentBlending;
extern CRGBPalette16 myRedWhiteBluePalette;
extern const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM;
int pin1 = 49;
int pin2 = 48;

int whaitTillFinished = 130;   //tempo stimato per una rotazione  [in millisecondi] 120
int currentValue = 0;           
String bits = "";

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
    
  FastLED.addLeds<LED_TYPE, LED_PIN1, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.addLeds<LED_TYPE, LED_PIN2, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.setBrightness(  BRIGHTNESS );
    
  for(int i = 0; i < NUM_LEDS; i++){
    leds[i] = CRGB:: White; 
  }
} 

//-----------------------------------------------------------------------------------------------

void loop() {   
  resetCommandTimeout();
  
  if(Serial.available()){
    //delay(5);                              //causes trubble. sometimes it skyps some moves. change it a bit around 10 or 20 is probably good
    String incomingValue = Serial.readString();   
    
    if(incomingValue == "A"){  //se legge 100 allora puoi eseguire le funzioni.
      //delay(20);
      //int str_len = bits.length();
      //Serial.print(bits);
      createAndControlFunc(bits);
      //Serial.flush(); //cancella tutto quello che che rimane nel buffer seriale
      //bits = "";
    }
    else{
      bits += incomingValue;
    }
  }  
  
  FastLED.show();
} 

//---------------------------------------------------------------------------------------------

void(*resetFunc) (void) = 0; //reset all data  


void createAndControlFunc(String message){ // funzione centrale  

  int len = message.length()+1;
  int num_of_parity_digits = 1;
  char hamming_list[len];
  message.toCharArray(hamming_list, len);

  bool control = Hamming(hamming_list, len);
  
  while(message.length() > pow(2, num_of_parity_digits)){
    num_of_parity_digits ++;
  }
  char removed_parity [message.length()- num_of_parity_digits - 1];

  int j = 0;
  for(int i=3; i< len; i++){
    float p = log(i)/log(2);
    if(p - (int)p != 0){
        removed_parity[j] = hamming_list[i];
        j++;
    }
  }
  int len_remove = sizeof(removed_parity);
  String moves [(int)(len_remove / 8)];
  /*if(len_remove == 160){
  Serial.println("111");
  }*/
  //Serial.print("111");
  for(int count = 0; count < (int)(len_remove / 8); count++){ 
    String bitstring = "";
    for(int k = count * 8; k < (count + 1) * 8; k++){
      bitstring += removed_parity[k];
    }
    //Serial.println(bitstring);
    moves[count] = binaryToDec(bitstring);
    //Serial.println(moves[count]);
    //delay(30);
  }

  if(control = true) {
    //Serial.print("101")     
    stepped(moves, sizeof(moves)); // controlla le rotazione che ogni motore deve eseguire passando per i valori del vettore controllato in precedenza
    //delay(4000);
    //Serial.print("100"); // manda un segnale a processing che determina la fine dell'esecuzione dei movimenti
  }
  
  Serial.flush(); //cancella tutto quello che che rimane nel buffer seriale
  bits = "";
  //resetFunc();    //reset di tutti i dati 
   
}
