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

int whaitTillFinished = 120;   //estimated time for 90° rotation  [in milliseconds]        
int currentValue = 0;
int values[130];

boolean solCorrect = false; 
//boolean onlyOneTime = false;

//-----------------------------------------------------------------------------------------------

void setup()  {
  //begin serial comnication with motor driver and pc
  Serial.begin(9600); 
  ticSerial.begin(9600);
  
  pinMode(49,OUTPUT);  //output 5V for the ledstrip
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
  
  delay(880); //power-up safety delay
    
  FastLED.addLeds<LED_TYPE, LED_PIN1, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip ); //declare led strips
  FastLED.addLeds<LED_TYPE, LED_PIN2, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.setBrightness(  BRIGHTNESS );

  for(int i = 0; i < NUM_LEDS; i++){ //set color for ledstrip
    leds[i] = CRGB:: White; 
  }
} 

//-----------------------------------------------------------------------------------------------

void loop() {   
  //resetCommandTimeout();
  
  if(Serial.available()){ //listening for incoming messag via usb-serial port
    delay(5);
    int incomingValue = Serial.read();   //read values
    values[currentValue] = incomingValue; //save values in array
    currentValue++;
    if(incomingValue == 100){  //onece true begin main function
      createAndControlFunc(values);
    }
  }  

  FastLED.show();
} 

//---------------------------------------------------------------------------------------------

void(*resetFunc) (void) = 0; //data reset function  


void createAndControlFunc(int d[]){ //main funuction  
  int a = d[0];                      //the first number that comes through the serial port is the length of the vector we need
  int parity = d[a+1];            //the last number controls the total parity
  int sol [a];                   //declare a vector with specific length
  
  for(int i = 0; i < a ; i++){ //Redimention the vector received via the serial port
    sol[i] = d[i+1];           //save in "sol"
  }

  Hamming(sol,parity);  //vector control: search for errors
  //delay(1000);
  if(solCorrect = true) { //Whether the vector "sol" satisfies the parity check 
    stepped(sol, a); //controls the rotations to be performed by each motor passing through the values of the vector checked above
    Serial.write(100); // Sends a signal to processing that determines the end of movement execution
  }
   
  Serial.flush(); //erases anything remaining in the serial buffer
  memset(values, 0, sizeof(values)); //set the initial vetor back to null
  solCorrect = false; //reset boolean
  currentValue = 0;
  //resetFunc();    //reset al data
}
