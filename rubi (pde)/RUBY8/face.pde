
class Face {
  //For simplicity I give each individual cubie 6 faces 
  //Each face has a color and a normal vector perpendicular to the face
  
  PVector normal;
  color c;
  
  Face(PVector normal, color c) { //constructor
    this.normal = normal;
    this.c = c;
  }
  
  void turnZ(float angle) {                                      //turn Face around the z axis an amount described by the angle
    PVector v2 = new PVector();                                  //new vector
    v2.x = round(normal.x * cos(angle) - normal.y *sin(angle));  //apply the rotation matrix 2x2 to the x and y value of the vector 
    v2.y = round(normal.x * sin(angle) + normal.y *cos(angle));  
    v2.z = round(normal.z);                                      //z values do not change
    normal = v2;                                                 //save the new generated vector
  }
  
  void turnY(float angle) {                                      //turn Face around the Y axis an amount described by the angle
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.z *sin(angle));  
    v2.z = round(normal.x * sin(angle) + normal.z *cos(angle));
    v2.y = round(normal.y);
    normal = v2;
  }
  
  void turnX(float angle) {                                      //turn Face around the x axis an amount described by the angle
    PVector v2 = new PVector();
    v2.y = round(normal.y * cos(angle) - normal.z *sin(angle));  
    v2.z = round(normal.y * sin(angle) + normal.z *cos(angle));
    v2.x = round(normal.x);
    normal = v2;
  
  }
  
  void show() {
    pushMatrix();  // salve current matrix sistem. the transformation are made between pushMatrix() and popMatrix()
    fill(c);       // fill the color 
    noStroke();
    rectMode(CENTER);  //change rect drawing setting
    translate(0.5*normal.x, 0.5*normal.y, 0.5*normal.z);  //traslate the current location
    
                               //corrections: paralel to z is ok
    if (abs( normal.x) > 0) {  //paralel to x axixs. -> rotate y
      rotateY(HALF_PI);
    } else if (abs(normal.y) > 0) { //paralel to y axixs. -> rotate x
      rotateX(HALF_PI);
    }
    
    square(0, 0, 1);  //draw the face
    popMatrix();  
  }  
}  
