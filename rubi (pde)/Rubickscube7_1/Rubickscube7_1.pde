
import peasy.*;
//import java.util.concurrent.locks.ReentrantLock;
  import processing.serial.*;
  
PeasyCam cam;
  Serial port;
 
float speed = 0.3;
int scrambled = 23; // +1
int typing = 0;
int saved = 0;
int [] solutionArray; // contains the solution 
int [] scrambledArray = new int[scrambled +1];
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
  
  new Move(2, 0, 0, -1, "M"), //M
  new Move(2, 0, 0, 1, "M'"),  //M'
  new Move(0, 2, 0, -1, "E"), //E
  new Move(0, 2, 0, 1, "E'"),  //E'
  new Move(0, 0, 2, 1, "S"), //S
  new Move(0, 0, 2, -1, "S'"), //S'
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
  
  Move m = allMoves[12]; //M =12
  Move M = allMoves[13]; //M'=13
  Move e = allMoves[14]; //E =14
  Move E = allMoves[15]; //E'=15
  Move s = allMoves[16]; //S =16
  Move S = allMoves[17]; //S'=17   

//ArrayList<Move> sequenceSolve = new ArrayList<Move>();
ArrayList<Move> sequence = new ArrayList<Move>();
int counter = 0;

//boolean started = false;    
boolean createScramble = false;   // permits to create only one scrambled array
boolean calculatingFinished = false; // when it's true start drowing the cube and animating
boolean spacePressed = false;  // if it's true it bloks the space bar
boolean keySPressed = false;   // if it's true it bloks the key 's'  
boolean startSolution = false;  //if true you can press the key 's'
boolean printlnSomeStuff = false; //just for show
boolean printlnSomeOderStuff = false; //also for show
boolean stupidBolean = false;
boolean extraShitProgram = false;

Move currentMove;
Move move[];
Cross cross;
Solution solution;

F2L f2l;
OLL oll;
PLL pll;


void setup()  {
  
//  String portName = Serial.list()[2];
//  port = new Serial(this, portName, 9600);
  
  size(600, 600, P3D);
// fullScreen(P3D);

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
  
/*  for (int i = 0; i < scrambled +1; i++) {
    int r = int(random(allMoves.length - 6)); // creating random moves 
    scrambledArray [i] = r;
    
    Move m = allMoves[r];
    sequence.add(m);     //  saving the random moves in an array of moves 
    m.complete();        //  scrambeling the cube virtually 
  }
    solution.createSolution();*/ //istantaneously solving the cube and saving the moves in an array
    
    //printArray(scrambledArray);
    //sendScrambled = intToByte(addChekNumbers(scrambledArray));
    //sendSolution = intToByte(addChekNumbers(solutionArray));
    //printArray(sendScrambled);
    //println();
    //printArray(sendSolution);
  
//  currentMove = sequence.get(counter);

/*solve in reverse mode
  for ( int i = sequence.size()-1; i >= 0; i--) {
    Move nextMove = sequence.get(i).copy();
    nextMove.reverse();
    sequence.add(nextMove);
  }  */
  
}

/*String flipCase(char c) {
  String s = "" + c;
  if (s.equals(s.toLowerCase())) {
    return s.toUpperCase();
    } else {
      return s.toLowerCase();
    }
}*/

/*
void draw(){
  background(180, 180, 180);
  
  fill(255);
  textSize(32);
  if (counter > scrambled ) {    
    text(counter-scrambled, 100, 100);
  }
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);
  
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    cube[i]. show();
    pop();
  }
}
*/
void draw() {
  
  //translate(width /2, height / 2);
  background(180);
  
  fill(255);
  textSize(32);
  if (counter > scrambled ) {    
    text(counter-scrambled, 150, 150);
  }
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);
  
  
if(shit == 1){   //odio i boolean porco dioooooooo!!!!!!
  shit++;
  if(shit == 2){
    scrambleOnes();                                          //take a random scrmble
  }
  if(shit == 3){
    takeSolutionOnes();                                      //calculate the solution to the original state
  }
  currentMove = sequence.get(counter);
  shit++;
}
  
  
/*  while(port.available() > 0){  // printing data from arduino
      recived = port.read();
       if(recived == 32){
         println(" ");
       }
       //else if(recived == 60){
       //  print("chek digit:     ");
       //}
       else{
         print(recived);
         print(", ");
       }
    }*/
    

  //equence.add(f);
  if(calculatingFinished){      // going through the sequence(arraylist of random moves)
  
    currentMove.update();
    if(counter == scrambled && currentMove.finished){  // if sequence if finisched set startSolution to true, wich permits to press the key 's' and add the solution to the sequence
      startSolution = true;
        if(printlnSomeStuff != true){
          println("schiaccia 's'per risolvere.");
          println(" ");
          printlnSomeStuff = true;
        }
    }
    if (sequence.size()> 0 && currentMove.finished()) {  
      if (counter < sequence.size()-1) {
        counter++;
        currentMove = sequence.get(counter);
        currentMove.start();
      }
    }
    if(printlnSomeOderStuff != true){
       println("schiaccia spacebar per mischiare il cubo.");
       println(" ");
       printlnSomeOderStuff = true;
    }
  
    scale(60);
    for (int i = 0; i < cube.length; i++) {
      push();
      if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
        rotateZ( currentMove.angle);
      } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
          rotateX( currentMove.angle);
      } else if (abs(cube[i].y) > 0 && cube[i].y == currentMove.y) {
          rotateY( -currentMove.angle);
      }
      cube[i]. show();
      pop();
    }
  }
}
