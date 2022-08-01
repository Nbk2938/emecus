
class Move { //varius variables
  float angle = 0;
  int x = 0;
  int y = 0;
  int z = 0;
  int dir;
  String type; 
  boolean animating = false;
  boolean finished = false;
  
  Move(int x, int y, int z, int dir, String type) { //Move constructor
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
    this.type = type;
  }
  
/*  Move copy() { //copy move
    return new Move(x, y, z, dir, type); 
  }  */
  
/*  void reverse() { //make reversed move
    dir *= -1; 
  }  */
  
  void start() {
    animating = true;
    finished = false;
    this.angle = 0;
  }
  
  boolean finished() {
   return finished; 
  }
  
  String toString(){ 
  return type;
  }
  
  
  
  void complete(){ //complete the move by checking wich cubies are effectet and turning them 90° in the specified direction
    if(abs(x) == 1) turnX(x,dir) ;
    if(x == 2) turnX(0,dir);
        
    if(abs(y) == 1) turnY(y,dir) ;
    if(y == 2) turnY(0,dir);
        
    if(abs(z) == 1) turnZ(z,dir) ;
    if(z == 2) turnZ(0,dir);
  }
  
  void update() {
    if(animating) {          
      angle += dir * speed;   //  displacement angle
      if (abs(angle) > HALF_PI) { //if more than 90° : null the angle 
        angle = 0;                
        animating = false;       
        finished = true;
                          //make new calculations of the positions of the cubies
        if(abs(x) == 1) turnX(x,dir) ;
        if(x == 2) turnX(0,dir);
        
        if(abs(y) == 1) turnY(y,dir) ;
        if(y == 2) turnY(0,dir);
        
        if(abs(z) == 1) turnZ(z,dir) ;
        if(z == 2) turnZ(0,dir);
        
      }  
    }  
  }
}  
