import peasy.*;

PeasyCam cam;

final int UPP = 0;
final int DWN = 1;
final int RGT = 2;
final int LFT = 3;
final int FRT = 4; 
final int BCK = 5;

// UP, DOWN, RIGHT, LEFT, FRONT, BACK
color[] colors = {
  /*#FFFFFF, #FFFF00,
  #FF0000, #FFA500,
  #00FF00, #0000FF*/
  #808080, #FFFF00,
  #808080, #808080,
  #808080, #808080
};
  
int dim = 3;
cubie[][][] cube = new cubie[dim][dim][dim];


void setup()  {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  for (int i = 0; i < dim; i++) { 
   for (int j = 0; j < dim; j++) { 
    for (int k = 0; k < dim; k++) {    
      float len = 50;
      float offset = (dim - 1) * len * 0.5;
      float x = len * i - offset;
      float y = len * j - offset;
      float z = len * k - offset;
      cube[i][j][k] = new cubie(x, y, z, len);
     }
    }
   }
  }
void draw() {
  background(255);
  rotateX(-0.60);
  rotateY(-0.785398);
  //rotateZ(0.11);
  
  for (int i = 0; i < dim; i++) { 
   for (int j = 0; j < dim; j++) { 
    for (int k = 0; k < dim; k++) {    
      cube[i][j][k]. show();
     }
    }
  }
}
