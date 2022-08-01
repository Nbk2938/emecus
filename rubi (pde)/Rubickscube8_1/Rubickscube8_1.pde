
import peasy.*; //external 3D object camera library
import lord_of_galaxy.timing_utils.* ; //stopwhatch library
import processing.serial.*; //usb serial port library
  
PeasyCam cam;
Serial port;
Stopwatch whatch;
 
PFont fil; 
float speed = 0.6;
int scrambled = 23; // +1
int typing = 0;
int saved = 0;
int [] solutionArray; // contains the solution 
int [] scrambledArray; // length and values defined by the user
byte [] sendSolution;
byte [] sendScrambled;
int recived;  // data send from arduino
int shit = 1;

int dim = 3;
cubie[] cube = new cubie[dim*dim*dim]; //cubie array. in total 27 cubies

Move[] allMoves = new Move[] { //declare possible moves 
  new Move(0, 1, 0, 1, "D'"),   //D'
  new Move(0, 1, 0, -1, "D"),  //D
  new Move(0, -1, 0, 1, "U"),  //U
  new Move(0, -1, 0, -1, "U'"), //U'
  new Move(1, 0, 0, 1, "R"),   //R
  new Move(1, 0, 0, -1, "R'"),  //R'
  new Move(-1, 0, 0, 1, "L'"),  //L'
  new Move(-1, 0, 0, -1, "L"), //L
  new Move(0, 0, 1, 1, "F"),   //F
  new Move(0, 0, 1, -1, "F'"),  //F'
  new Move(0, 0, -1, 1, "B'"),  //B'
  new Move(0, 0, -1, -1, "B"), //B
  
  //new Move(2, 0, 0, -1, "M"), //M
  //new Move(2, 0, 0, 1, "M'"),  //M'
  //new Move(0, 2, 0, -1, "E"), //E
  //new Move(0, 2, 0, 1, "E'"),  //E'
  //new Move(0, 0, 2, 1, "S"), //S
  //new Move(0, 0, 2, -1, "S'"), //S'
};
                         //number corrispondatoin to Moves
  Move D = allMoves[0];  //D'=0
  Move d = allMoves[1];  //D =1
  Move u = allMoves[2];  //U =2 
  Move U = allMoves[3];  //U'=3
  Move r = allMoves[4];  //R =4
  Move R = allMoves[5];  //R'=5
  Move L = allMoves[6];  //L'=6
  Move l = allMoves[7];  //L =7
  Move f = allMoves[8];  //F =8
  Move F = allMoves[9];  //F'=9
  Move B = allMoves[10]; //B'=10
  Move b = allMoves[11]; //B =11
  
  //Move m = allMoves[12]; //M =12
  //Move M = allMoves[13]; //M'=13
  //Move e = allMoves[14]; //E =14
  //Move E = allMoves[15]; //E'=15
  //Move s = allMoves[16]; //S =16
  //Move S = allMoves[17]; //S'=17   

ArrayList <Move> sequence = new ArrayList<Move>(); // declare a list of moves, used for animation
ArrayList <Integer> sequenceInToNubers = new ArrayList<Integer>();
int counter = 0;

//boolean started = false;    
boolean createScramble = false;       // permits to create only one scrambled array
boolean calculatingFinished = false;  // when it's true start drowing the cube and animating
boolean enterPressed = false;         // if it's true it bloks enter
boolean keySPressed = false;          // if it's true it bloks the key 's'  
boolean startSolution = false;        //if true you can press the key 's'
boolean printlnSomeStuff = false;     //for userinterface
boolean printlnSomeOderStuff = false; //for userinterface
boolean stupidBolean = false;
boolean extraShitProgram = false;
boolean stopTiping = false;
boolean ArduinoReadyForSolution = false;
boolean something = false;

Move currentMove; //declare objects
Move move[];
Cross cross;
Solution solution;
F2L f2l;
OLL oll;
PLL pll;


void setup()  {
  
  //printArray(Serial.list());
  String portName = Serial.list()[4]; //2 //declare serial port and begin comunication 
  port = new Serial(this, portName, 9600);
  whatch = new Stopwatch(this);
  fil = createFont("Arial",50);
  
  size(2000, 1200, P3D);  // P3D for rappresenting the cube in a 3D space
  //fullScreen(P3D);

  solutionArray = null;
  solution = new Solution();
  
  cam = new PeasyCam(this, 400); //library for 3D viewing objects
  
  int index = 0;                                 //I give a position to each cube
  for (int x = -1; x <= 1; x++) {                //I cicle all 27 possible combinations of positions
   for (int y = -1; y <= 1; y++) { 
    for (int z = -1; z <= 1; z++) {          
      PMatrix3D matrix = new PMatrix3D();        //I create a 3D matrix. each cube has its own matrix in its own 3D sapace
      matrix.translate(x, y, z);                 //assigning the position to the matrix
      cube[index] = new cubie(matrix, x , y, z); //create cubie oject
      index++;
      }
    }
  }
  
  println(" Inserisci una sequenza di movimenti per mischiare il cubo di rubik ");
  println(" (consiglio di inserire almeno 25 movimenti per garantire una buona mischiata)");
  println(" ");
  println(" le opzioni:");
  println(" ");
  println("   premi r per eseguire il movimento R ");
  println("   premi R per eseguire il movimento R' ");
  println("   premi l per eseguire il movimento L ");
  println("   premi L per eseguire il movimento L' ");
  println("   premi u per eseguire il movimento U ");
  println("   premi U per eseguire il movimento U' ");
  println("   premi d per eseguire il movimento D ");
  println("   premi D per eseguire il movimento D' ");
  println("   premi f per eseguire il movimento F ");
  println("   premi F per eseguire il movimento F' ");
  println("   premi b per eseguire il movimento B ");
  println("   premi B per eseguire il movimento B' ");
  println(" ");
  println(" Quando sei convinto di avere mischiato bene premi ENTER per confermare la sequenza. ");
  println(" ");
    
  
}

/*String flipCase(char c) {
  String s = "" + c;
  if (s.equals(s.toLowerCase())) {
    return s.toUpperCase();
    } else {
      return s.toLowerCase();
    }
}*/

void draw() {
  
  //translate(width /2, height / 2);
  background(25);
  textFont(fil);
  fill(250);
  textSize(18);
  
  if(enterPressed == false){ //manual for the user for scrambling the cube
    text("Inserisci una sequenza di movimenti usando la tastiera per mischiare il cubo di rubik",-370,-180);
    text("Schiacccia ENTER per confermare la sequenza",-370,-150);
    text(" l = L ; L = L'",-370,-120);
    text(" r = R ; R = R'",-370,-90);
    text(" u = U ; U = U'",-370,-60);
    text(" d = D ; D = D'",-370,-30);
    text(" f = F ; F = F'",-370,0);
    text(" b = B ; B = B'",-370,30);
    text(counter, 100, 100);
    text("movimenti",140,100);
  }
  if(enterPressed == true && ArduinoReadyForSolution == false){ //display some text for user
    text("Viene mischiato il cubo reale...",-370,-180);
    
  }
  if(enterPressed == true){
    textSize(26);
    text(str(whatch.time()/ 1000.0), -60, 0,150);
    text("secondi",30,0, 150);
    textSize(14);
    text("mischiaggio: " ,-370,150);
    showSequence();
    textSize(18);
  }
  if(ArduinoReadyForSolution == true && keySPressed == false){
    text("Schiaccia 's' per risolvere il cubo di rubik",-370,-180);
    
    ////cam.reset();
  }
  if(keySPressed == true && something == false){
    text("risoluzione...",-370,-180);
  }
  if(something == true){
   text("risolto",-370,-180);
  }
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);
  
    
  if(sequence.size()> 0 && currentMove.animating == true){
    currentMove.update(); //update the angle and positions if angle is grater than 90°
  }
  
  while(port.available() > 0){  //whaiting for arduino signal
    recived = port.read();
    if(recived == 100) {    //arduino has finsched going through the sequence
      if(keySPressed == false) {
        ArduinoReadyForSolution = true;
        println("Schiaccia 's' per la risoluzione del cubo");
        println(" ");
      }
      else if(keySPressed == true){
        whatch.pause(); //stop whatch 
        something = true;
      }
    }
  }
  
  
  scale(50);
  for (int i = 0; i < cube.length; i++) { //animation of currentMove
    push();
    if (sequence.size()> 0 && abs(cube[i].z) > 0 && cube[i].z == currentMove.z) { //if currenMove has a Z component turn the specific cubies in that direction. the angle determins the amount of movement
      rotateZ( currentMove.angle);
    } 
    else if (sequence.size()> 0 && abs(cube[i].x) > 0 && cube[i].x == currentMove.x) { //if currenMove has a X component turn the specific cubies in that direction. the angle determins the amount of movement
      rotateX( currentMove.angle);
    } 
    else if (sequence.size()> 0 && abs(cube[i].y) > 0 && cube[i].y == currentMove.y) { //if currenMove has a Y component turn the specific cubies in that direction. the angle determins the amount of movement
      rotateY( -currentMove.angle);
    }                                                            //animation is archived by moving the turns by a small amount every time draw() updates. if the move is completed we animate the next move in the sequence 
    cube[i]. show(); // display cubies in curret position
    pop();
  }
}
