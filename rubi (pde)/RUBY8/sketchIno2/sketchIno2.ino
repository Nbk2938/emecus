#include <Tic.h>     //library driver
#include <FastLED.h>   //library led

#ifdef SERIAL_PORT_HARDWARE_OPEN
#define ticSerial SERIAL_PORT_HARDWARE_OPEN
#else
#include <SoftwareSerial.h>
SoftwareSerial ticSerial();
#endif

TicSerial tic1(Serial1, 1); //declare the drivers
TicSerial tic2(Serial1, 2);
TicSerial tic3(Serial1, 3);
TicSerial tic4(Serial1, 4);
TicSerial tic5(Serial1, 5);
TicSerial tic6(Serial1, 6);

#define LED_PIN1     51   //variables for led control
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

int whaitTillFinished = 140;   //estimated time for 90° rotation  [in milliseconds]
int currentValue = 0;           
String bits = "";

boolean solCorrect = false; 
//boolean scramble = true;

//-----------------------------------------------------------------------------------------------

void setup()  {
  Serial.begin(9600); //begin serial comnication with motor driver and pc
  ticSerial.begin(9600);
  
  pinMode(49,OUTPUT);   //output 5V for the ledstrip
  pinMode(48,OUTPUT);
  digitalWrite(49, HIGH);
  digitalWrite(48, HIGH);
    
  delay(20);

  tic1.haltAndSetPosition(0); //declare a zero position for the motors and hold the position
  tic2.haltAndSetPosition(0);
  tic3.haltAndSetPosition(0);
  tic4.haltAndSetPosition(0);
  tic5.haltAndSetPosition(0);
  tic6.haltAndSetPosition(0);
  

  tic1.exitSafeStart();  //motors can be ordered to move
  tic2.exitSafeStart();
  tic3.exitSafeStart();
  tic4.exitSafeStart();
  tic5.exitSafeStart();
  tic6.exitSafeStart();
  
  delay(880); // power-up safety delay
    
  FastLED.addLeds<LED_TYPE, LED_PIN1, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip ); //declare led strips
  FastLED.addLeds<LED_TYPE, LED_PIN2, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.setBrightness(  BRIGHTNESS );
    
  for(int i = 0; i < NUM_LEDS; i++){ //set color for ledstrip
    leds[i] = CRGB:: White; 
  }
} 

//-----------------------------------------------------------------------------------------------

void loop() {   
  
  
  if(Serial.available()){                        //listening for incoming messag via usb-serial port
    delay(5);                                    //causes trubble. sometimes it skyps some moves. change it a bit around 10 or 20 is probably good
    String incomingValue = Serial.readString();   
    
    if(incomingValue == "A"){                    //once true begin main function

      createAndControlFunc(bits);
    }
    else{
      bits += incomingValue;
    }
  }  
  
  FastLED.show();
} 

//---------------------------------------------------------------------------------------------

void(*resetFunc) (void) = 0; //reset all data  


void createAndControlFunc(String message){ //main funuction 

  int len = message.length()+1;
  int num_of_parity_digits = 1; 
  char hamming_list[len]; // message in to char array
  message.toCharArray(hamming_list, len);

  bool control = Hamming(hamming_list, len); //controll hamming digits
  
  while(message.length() > pow(2, num_of_parity_digits)){ //search amount of parity digits
    num_of_parity_digits ++;
  }
  char removed_parity [message.length() - num_of_parity_digits - 1]; // also minus the total parity digit (0)

  int j = 0;
  for(int i=3; i< len; i++){
    float p = log(i)/log(2);
    if(p - (int)p != 0){
        removed_parity[j] = hamming_list[i]; //eliminate the parity digits
        j++;
    }
  }
  int len_remove = sizeof(removed_parity);
  String moves [(int)(len_remove / 8)];

  for(int count = 0; count < (int)(len_remove / 8); count++){ //take 8 bit chars and convert them into decimal
    String bitstring = "";
    for(int k = count * 8; k < (count + 1) * 8; k++){
      bitstring += removed_parity[k];
    }
    //Serial.println(bitstring);
    moves[count] = binaryToDec(bitstring); // translate the 8 binary bit string in deimal 

  }

  if(control = true) {
    stepped(moves, sizeof(moves)); // stepp the motors according to the moves Array
  }
  
  Serial.flush(); // clear the buffer
  bits = "";      // null the initial string
  //resetFunc();    
   
}
