
import peasy.*;

PeasyCam cam;

PFont f;
int dim = 3;
cubie[] cube = new cubie[dim*dim*dim];

void setup()  {
  //size(600, 600, P3D);
  fullScreen(P3D);
  f = createFont("Arial",11);
  
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
}

void turnX(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.x == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.y, qb.z);
      qb.update(qb.x, round(matrix.m02), round(matrix.m12));
      qb.turnFacesX(dir);
    }
  }
}

void turnY(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.y == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.x, qb.z);
      qb.update(round(matrix.m02), qb.y, round(matrix.m12));
      qb.turnFacesY(dir);
    }
  }
}

void turnZ(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.z == index) {
      PMatrix2D matrix = new PMatrix2D();
      matrix.rotate(dir*HALF_PI);
      matrix.translate(qb.x, qb.y);
      qb.update(round(matrix.m02), round(matrix.m12), qb.z);
      qb.turnFacesZ(dir);
    }
  }
}

void draw() {
  background(51);
  print("");
  
  textFont(f);
  fill(255);
  
  text(" Per muovere il cubo clicca lo schermo con il mouse e trascina",-300,-180);
  text(" Per eseguire dei movimenti schiaccia i tasti: r, R, l, L, f, F, b, B, u, U, d, D ",-300,-160);
  text(" Premi 'Esc' per uscire dal programma",-300,-140);
  
  rotateX(-0.5);
  rotateY(-0.5);
  rotateZ(0.1);
  
  scale(50);
  
  for (int i = 0; i < cube.length; i++) {   
    cube[i]. show();
 }
}
