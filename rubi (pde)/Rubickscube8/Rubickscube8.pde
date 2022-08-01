
import peasy.*; //external 3D object camera library
import lord_of_galaxy.timing_utils.* ; //stopwhatch library
import processing.serial.*; //usb serial port library
  
PeasyCam cam;
Serial port;
Stopwatch whatch;
 

PFont fil; 
float speed = 0.33;
int scrambled = 19;  //+1
int typing = 0;
int saved = 0;
int [] solutionArray; // contains the solution 
int [] scrambledArray = new int[scrambled +1];
byte [] sendSolution;
byte [] sendScrambled;
int recived;  // data send from arduino

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
  
  new Move(2, 0, 0, -1, "M"), //M
  new Move(2, 0, 0, 1, "M'"),  //M'
  new Move(0, 2, 0, -1, "E"), //E
  new Move(0, 2, 0, 1, "E'"),  //E'
  new Move(0, 0, 2, 1, "S"), //S
  new Move(0, 0, 2, -1, "S'"), //S'
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
  
  Move m = allMoves[12]; //M =12
  Move M = allMoves[13]; //M'=13
  Move e = allMoves[14]; //E =14
  Move E = allMoves[15]; //E'=15
  Move s = allMoves[16]; //S =16
  Move S = allMoves[17]; //S'=17   

ArrayList<Move> sequence = new ArrayList<Move>(); // declare a list of moves, used for animation
int counter = 0;

//boolean started = false;    
boolean calculatingFinished = false;   // when it's true start drowing the cube and animating
boolean spacePressed = false;          //if it's true it bloks the space bar
boolean keySPressed = false;           //if it's true it bloks the key 's'  
boolean startSolution = false;         //if true you can press the key 's'
boolean printlnSomeStuff = false;      //for userinterface
boolean printlnSomeOderStuff = false;  //for userinterface
boolean solved = false;

Move currentMove; //declare objects
Move move[];
Cross cross;
Solution solution;

F2L f2l;
OLL oll;
PLL pll;


void setup()  {
  
  //printArray(Serial.list());
  String portName = Serial.list()[2]; //4 //declare serial port and begin comunication 
  port = new Serial(this, portName, 9600);
  whatch = new Stopwatch(this);
  fil = createFont("Arial",50);
  
  size(2000, 1200, P3D); // P3D for rappresenting the cube in a 3D space
  //fullScreen(P3D);

  solutionArray = null;
  solution = new Solution();
  
  cam = new PeasyCam(this, 400); //library for 3D viewing objects
  
  int index = 0;                                   //I give a position to each cube
  for (int x = -1; x <= 1; x++) {                  //I cicle all 27 possible combinations of positions
   for (int y = -1; y <= 1; y++) { 
    for (int z = -1; z <= 1; z++) {          
      PMatrix3D matrix = new PMatrix3D();         //I create a 3D matrix. each cube has its own matrix in its own 3D sapace
      matrix.translate(x, y, z);                  //assigning the position to the matrix
      cube[index] = new cubie(matrix, x , y, z);  //create cubie oject
      index++;                                    
      }
    }
  }
  
  for (int i = 0; i < scrambled +1; i++) { // create random generated scramble sequence of moves
    int r = int(random(allMoves.length - 6));  
    scrambledArray [i] = r; 
    
    Move m = allMoves[r];
    sequence.add(m);     //save the move in sequence
    m.complete();        //istantly apply the move to the cube
  }
    solution.createSolution(); //after scrambleling the cube istantaneously solve the cube and save the solution sequence in an array
    
    sendScrambled = intToByte(addHammingPrity(scrambledArray)); //add a control value to the sequence and convert it in bytes
    sendSolution = intToByte(addHammingPrity(solutionArray));
    //print(scrambledArray);
    //println();
    //printArray(solutionArray);
    
  
  currentMove = sequence.get(counter); // set currentMove to the firs move in the sequence


}

void draw() {

  //translate(width /2, height / 2);
  background(10);
  textFont(fil);
  fill(255);
  textSize(20);
  Text();
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);

  
  if(calculatingFinished){      // going through the sequence(arraylist of random moves)
    currentMove.update();       //update the angle and positions if angle is grater than 90°
    if(counter == scrambled && currentMove.finished){  // if sequence is finisched set startSolution to true, wich permits to press the key 's' and add the solution to the sequence
      startSolution = true;
        if(printlnSomeStuff != true){
          println("schiaccia 's'per risolvere.");
          println(" ");
          printlnSomeStuff = true;
        }
    }
    if (currentMove.finished()) {  
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
    if(counter - scrambled == solutionArray.length -1){
      whatch.pause();
      solved = true;
    }
        
    scale(45);
    for (int i = 0; i < cube.length; i++) { //animation of currentMove
      push();
      if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) { //if currenMove has a Z component turn the specific cubies in that direction. the angle determins the amount of movement
        rotateZ( currentMove.angle);
      } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {//if currenMove has a X component turn the specific cubies in that direction. the angle determins the amount of movement
          rotateX( currentMove.angle);
      } else if (abs(cube[i].y) > 0 && cube[i].y == currentMove.y) {//if currenMove has a Y component turn the specific cubies in that direction. the angle determins the amount of movement
          rotateY( -currentMove.angle);
      }                                 //animation is archived by moving the turns by a small amount every time draw() updates. if the move is completed we animate the next move in the sequence 
      cube[i]. show(); // display cubies in curret position
      pop();
      
    }
    
  }
}
