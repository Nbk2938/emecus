class cubie {
  PVector pos;
  float len;
  
  cubie(float x , float y , float z , float len_) {
    pos = new PVector(x,y,z);
    len = len_;
    }
 
 void show() {
   fill(255);
   stroke(0);
   strokeWeight(7);
   pushMatrix();
   translate(pos.x, pos.y, pos.z);
   beginShape(QUADS);
   float r = len / 2;
   
   // asse X
   fill(colors[RGT]);
   vertex(-r, -r, -r);
   vertex(-r , r, -r);
   vertex(-r, r, r);
   vertex(-r, -r, r);
   
   fill(colors[LFT]);
   vertex(r, -r, -r);
   vertex(r , r, -r);
   vertex(r, r, r);
   vertex(r, -r, r);
   
   // asse y
   fill(colors[DWN]);
   vertex(-r, -r, -r);
   vertex(r, -r, -r);
   vertex(r, -r, r);
   vertex(-r, -r, r);
   
   fill(colors[UPP]);
   vertex(-r, r, -r);
   vertex(r , r, -r);
   vertex(r, r, r);
   vertex(-r, r, r);
   
   // asse Z
   fill(colors[BCK]);
   vertex(-r, -r, -r);
   vertex(r, -r, -r);
   vertex(r, r, -r);
   vertex(-r, r, -r);
   
   fill(colors[FRT]);
   vertex(-r, -r, r);
   vertex(r , -r, r);
   vertex(r, r, r);
   vertex(-r, r, r);
   
   endShape();
   
  // box(len);
   popMatrix();
 }
   
}
