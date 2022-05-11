
import peasy.*;
//import java.util.concurrent.locks.ReentrantLock;
import lord_of_galaxy.timing_utils.* ;
import processing.serial.*;
  
PeasyCam cam;
Serial port;
Stopwatch whatch;
 
PFont fil; 
float speed = 0.6;
int scrambled = 23; // +1
int typing = 0;
int saved = 0;
int [] solutionArray; // contains the solution 
int [] scrambledArray;
byte [] sendSolution;
byte [] sendScrambled;
int recived;  // data send from arduino
int shit = 1;

int dim = 3;
cubie[] cube = new cubie[dim*dim*dim];


Move[] allMoves = new Move[] {
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

//ArrayList<Move> sequenceSolve = new ArrayList<Move>();
ArrayList <Move> sequence = new ArrayList<Move>();
ArrayList <Integer> sequenceInToNubers = new ArrayList<Integer>();
int counter = 0;

//boolean started = false;    
boolean createScramble = false;   // permits to create only one scrambled array
boolean calculatingFinished = false; // when it's true start drowing the cube and animating
boolean enterPressed = false;  // if it's true it bloks enter
boolean keySPressed = false;   // if it's true it bloks the key 's'  
boolean startSolution = false;  //if true you can press the key 's'
boolean printlnSomeStuff = false; //just for show
boolean printlnSomeOderStuff = false; //also for show
boolean stupidBolean = false;
boolean extraShitProgram = false;
boolean stopTiping = false;
boolean ArduinoReadyForSolution = false;
boolean something = false;

Move currentMove;
Move move[];
Cross cross;
Solution solution;
F2L f2l;
OLL oll;
PLL pll;


void setup()  {
  
  String portName = Serial.list()[2];
  port = new Serial(this, portName, 9600);
  whatch = new Stopwatch(this);
  fil = createFont("Arial",50);
  
  size(1000, 600, P3D);
  //fullScreen(P3D);

  solutionArray = null;
  solution = new Solution();
  
  cam = new PeasyCam(this, 400);
  
  int index = 0;
  for (int x = -1; x <= 1; x++) { 
   for (int y = -1; y <= 1; y++) { 
    for (int z = -1; z <= 1; z++) {          
      PMatrix3D matrix = new PMatrix3D();
      matrix.translate(x, y, z);
      cube[index] = new cubie(matrix, x , y, z);
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
  
  //text(counter, 100, 100);
  //text(str(whatch.time()/ 1000.0), 100, 150);
  
  if(enterPressed == false){
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
  if(enterPressed == true && ArduinoReadyForSolution == false){
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
    currentMove.update();
  }
  
    while(port.available() > 0){  // printing data from arduino
      recived = port.read();
      if(recived == 100) { 
        if(keySPressed == false) {
          ArduinoReadyForSolution = true;
          println("Schiaccia 's' per la risoluzione del cubo");
          println(" ");
        }
        else if(keySPressed == true){
          whatch.pause();
          something = true;
        }
      }
       //if(recived == 32){
       //  println(" ");
       //}
       //else if(recived == 60){
       //  print("chek digit:     ");
       //}
       //else{
       //  print(recived);
         //print(", ");
       //}
    }
  
  
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    if (sequence.size()> 0 && abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
      rotateZ( currentMove.angle);
    } 
    else if (sequence.size()> 0 && abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
      rotateX( currentMove.angle);
    } 
    else if (sequence.size()> 0 && abs(cube[i].y) > 0 && cube[i].y == currentMove.y) {
      rotateY( -currentMove.angle);
    }
    cube[i]. show();
    pop();
  }
}
