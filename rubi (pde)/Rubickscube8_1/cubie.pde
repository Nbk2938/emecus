
class cubie {
  PMatrix3D matrix; //contains the position of a cubie
  int x = 0;        //singular position values
  int y = 0;
  int z = 0;
  color c;
  Face[] faces = new Face[6]; //every cubie has 6 colored faces
  
  cubie(PMatrix3D m, int x, int y, int z) { //cubie constructor
    this.matrix = m;
    this.x = x;
    this.y = y;
    this.z = z;
    c = color(255);
                                                                         //declaration of the 6 faces
    faces[0] = new Face( new PVector(0, 0, -1), color (0, 255, 51));     //green (dietro)(0, 255, 51)
    faces[1] = new Face( new PVector(0, 0, 1), color (0, 0, 255));       //blue (davanti)(0, 0, 255)
    faces[2] = new Face( new PVector(0, 1, 0), color (255, 255, 255));   //white (sopra)(255, 255, 255 )
    faces[3] = new Face( new PVector(0, -1, 0), color (255, 255, 0));    //jellow (sotto)(255, 255, 0)
    faces[4] = new Face( new PVector(1, 0, 0), color (255, 0, 0));       //red (destra)(255, 0, 0)
    faces[5] = new Face( new PVector(-1, 0, 0), color (255, 150, 0));    //orange (sinistra)(255, 150, 0)
  }
  
  void turnFacesZ(int dir){ //turn faces around the z axis 
    for (Face f : faces) {
      f.turnZ(dir*HALF_PI);    
    }  
  }
  void turnFacesY(int dir){ //turn faces around the y axis
    for (Face f : faces) {
      f.turnY(dir*HALF_PI);    
    }  
  }
  void turnFacesX(int dir){ //turn faces around the x axis 
    for (Face f : faces) {
      f.turnX(dir*HALF_PI);    
    }  
  }
 void update(int x, int y, int z) {
   matrix.reset();                       //reset matrix -> back to identity matrix
   matrix.translate(x, y, z);            //save new vallues in matrix
    this.x = x;
    this.y = y;
    this.z = z;
   
 }
 void show() {
  // fill(c);
  noFill();
   stroke(0);
   strokeWeight(0.03);
   pushMatrix();               // salve current matrix sistem. the transformation are made between pushMatrix() and popMatrix()
   applyMatrix(matrix);        // Multiply currrent matix by the parameter
   box(1);                     // build cubie
   for ( Face f : faces) {     // assign faces
     f.show();
   }
   popMatrix();
 }
}
