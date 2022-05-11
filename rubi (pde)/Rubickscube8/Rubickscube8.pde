
import peasy.*;
//import java.util.concurrent.locks.ReentrantLock;
import lord_of_galaxy.timing_utils.* ;
import processing.serial.*;
  
PeasyCam cam;
Serial port;
Stopwatch whatch;
 

PFont fil; 
float speed = 0.176;
int scrambled = 19;  //+1
int typing = 0;
int saved = 0;
int [] solutionArray; // contains the solution 
int [] scrambledArray = new int[scrambled +1];
byte [] sendSolution;
byte [] sendScrambled;
int recived;  // data send from arduino

int dim = 3;
cubie[] cube = new cubie[dim*dim*dim]; //l'array contiene tutti i 27 cubetti. Molto utile per identificare qualsiasi cubo individuale


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
boolean calculatingFinished = false; // when it's true start drowing the cube and animating
boolean spacePressed = false;  // if it's true it bloks the space bar
boolean keySPressed = false;   // if it's true it bloks the key 's'  
boolean startSolution = false;  //if true you can press the key 's'
boolean printlnSomeStuff = false; //just for show
boolean printlnSomeOderStuff = false; //also for show
boolean solved = false;

Move currentMove;
Move move[];
Cross cross;
Solution solution;

F2L f2l;
OLL oll;
PLL pll;


void setup()  {
  
  String portName = Serial.list()[4];
  //printArray(Serial.list());
  port = new Serial(this, portName, 9600);
  whatch = new Stopwatch(this);
  fil = createFont("Arial",50);
  
  size(1000, 600, P3D); // P3D per rappresentare il cubo in uno spazio 3D
  //fullScreen(P3D);

  solutionArray = null;
  solution = new Solution();
  
  cam = new PeasyCam(this, 400); //libreria per oggetti 3D
  
  int index = 0;                                   //do una posizione ad ogni cubettto
  for (int x = -1; x <= 1; x++) {                  //passo tutte le 27 possibile combinazioni di posizioni
   for (int y = -1; y <= 1; y++) { 
    for (int z = -1; z <= 1; z++) {          
      PMatrix3D matrix = new PMatrix3D();         //creo una matrice 3D. ogni cubetto ha una propria matrice in un proprio sapazio 3D
      matrix.translate(x, y, z);                  // inserisco la posizione nella matrice. 
      cube[index] = new cubie(matrix, x , y, z);  //assegno al cubetto la sua matrice di posizine e per ridondanza anche i valori in variabili separate  
      index++;                                    //ripeto per ogni cubetto
      }
    }
  }
  
  for (int i = 0; i < scrambled +1; i++) { 
    int r = int(random(allMoves.length - 6)); // sceglie un numero a caso 
    scrambledArray [i] = r; // aggiunge il numero al vettore
    
    Move m = allMoves[r];
    sequence.add(m);     //  salva il corrispondente movimento  
    m.complete();        //  viene mischiato istantaneamente
                         //  l'utente non lo vede
  }
    solution.createSolution(); //istantaneously solving the cube and saving the moves in an array
    
    sendScrambled = intToByte(addHammingPrity(scrambledArray));
    sendSolution = intToByte(addHammingPrity(solutionArray));
    print(scrambledArray);
    println();
    printArray(solutionArray);
    
  
  currentMove = sequence.get(counter);


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
  
  
  
  
  
 /* while(port.available() > 0){  // printing data from arduino
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
