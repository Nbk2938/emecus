class cubie {
  PVector pos;
  float len;
  
  cubie(float x , float y , float z , float len_) {
    pos = new PVector(x,y,z);
    len = len_;
    }
 
 void show1() {
   fill(255);
   stroke(0);
   strokeWeight(3);
   pushMatrix();
   translate(pos.x, pos.y, pos.z);
   box(len);
   popMatrix();
 }
 
 void show() {
   fill(200, 200, 200);
   stroke(0);
   strokeWeight(3);
   pushMatrix();
   translate(pos.x, pos.y, pos.z);
   box(len);
   popMatrix();
 }
   
}
