
import peasy.*;

PeasyCam cam;
 
float speed = 0.9;
int scrambled = 100;
int typing = 0;
int saved = 0;

int dim = 3;
cubie[] cube = new cubie[dim*dim*dim];


Move[] allMoves = new Move[] {
  new Move(0, 1, 0, 1),   //D'
  new Move(0, 1, 0, -1),  //D
  new Move(0, -1, 0, 1),  //U
  new Move(0, -1, 0, -1), //U'
  new Move(1, 0, 0, 1),   //R
  new Move(1, 0, 0, -1),  //R'
  new Move(-1, 0, 0, 1),  //L'
  new Move(-1, 0, 0, -1), //L
  new Move(0, 0, 1, 1),   //F
  new Move(0, 0, 1, -1),  //F'
  new Move(0, 0, -1, 1),  //B'
  new Move(0, 0, -1, -1), //B
  
  new Move(2, 0, 0, -1), //M
  new Move(2, 0, 0, 1),  //M'
  new Move(0, 2, 0, -1), //E
  new Move(0, 2, 0, 1),  //E'
  new Move(0, 0, 2, 1), //S
  new Move(0, 0, 2, -1), //S'
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

ArrayList<Move> sequence = new ArrayList<Move>();
int counter = 0;
boolean started = false;

Move currentMove;
Move move[];
Cross cross;
F2L f2l;
OLL oll;

void setup()  {
  size(600, 600, P3D);
// fullScreen(P3D);
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
  
  for (int i = 0; i < scrambled +1; i++) {
    int r = int(random(allMoves.length - 6));
    Move m = allMoves[r];
    sequence.add(m);
  }
  
  currentMove = sequence.get(counter);

//solve in reverse mode
//  for ( int i = sequence.size()-1; i >= 0; i--) {
//    Move nextMove = sequence.get(i).copy();
//    nextMove.reverse();
//    sequence.add(nextMove);
//  }

// println(sequence);
}

String flipCase(char c) {
  String s = "" + c;
  if (s.equals(s.toLowerCase())) {
    return s.toUpperCase();
    } else {
      return s.toLowerCase();
    }
}

void draw() {
  background(180, 180, 180);
  
  fill(255);
  textSize(32);
  if (counter > scrambled ) {    
    text(counter-scrambled, 100, 100);
  }
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);
  
  currentMove.update();
  if (currentMove.finished()) {
    if (counter < sequence.size()-1) {
      counter++;
      currentMove = sequence.get(counter);
      currentMove.start();

   }
 }  
 

  scale(50);
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
