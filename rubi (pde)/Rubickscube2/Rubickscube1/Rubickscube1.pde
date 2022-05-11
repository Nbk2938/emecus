import peasy.*;

PeasyCam cam;
PFont f;

int dim = 3;
cubie[][][] cube = new cubie[dim][dim][dim];
void setup()  {
  size(1000, 1000, P3D);
  f = createFont("Arial", 16, true);
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
  textFont(f, 30);
  fill(0);
 /* text(" U ", 0,-90, 0);
  text(" R ", 90, 0, 0);
  text(" F ",  0 , 0, 100);*/
  

      
      
 cube[0][0][0]. show1();
 
 cube[0][0][1]. show1();
 cube[0][1][0]. show1();
 cube[1][0][0]. show1();
 
 cube[0][1][1]. show1();
 cube[1][1][0]. show1();
 cube[1][0][1]. show1();
 
 cube[1][1][1]. show1();
 
 cube[1][1][2]. show1();
 cube[1][2][1]. show1();
 cube[2][1][1]. show1();
 
 cube[1][2][2]. show1();
 cube[2][2][1]. show1();
 cube[2][1][2]. show1();
 
 cube[2][2][2]. show1();
 
 cube[0][0][2]. show1();
 cube[0][2][0]. show1();
 cube[2][0][0]. show1();
 
 cube[0][2][2]. show1();
 cube[2][2][0]. show1();
 cube[2][0][2]. show1();
 
 cube[0][1][2]. show1();
 cube[0][2][1]. show1();
 cube[1][0][2]. show1();
 cube[2][0][1]. show1();
 cube[2][1][0]. show1();
 cube[1][2][0]. show1();
      
}
