
class Move {
  float angle = 0;
  int x = 0;
  int y = 0;
  int z = 0;
  int dir;
  String type; 
  boolean animating = false;
  boolean finished = false;
  
  Move(int x, int y, int z, int dir, String type) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
    this.type = type;
  }
  
/*  Move copy() {
    return new Move(x, y, z, dir, type); 
  }*/
  
  void reverse() {
    dir *= -1; 
  }
  
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
  
  
  
  void complete(){
    if(abs(x) == 1) turnX(x,dir) ;
    if(x == 2) turnX(0,dir);
        
    if(abs(y) == 1) turnY(y,dir) ;
    if(y == 2) turnY(0,dir);
        
    if(abs(z) == 1) turnZ(z,dir) ;
    if(z == 2) turnZ(0,dir);
  }
  
  void update() {
    if(animating) {
      angle += dir * speed;
      if (abs(angle) > HALF_PI) {
        angle = 0;
        animating = false;
        finished = true;
        
/*        if (abs(z) > 0) {
          turnZ(z, dir);
        } 
        else if (abs(x) > 0) {
          turnX(x, dir);
        } 
        else if (abs(y) > 0) {
          turnY(y, dir);
        } */
        
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
