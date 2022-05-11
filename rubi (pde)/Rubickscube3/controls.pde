
void keyPressed() {
  switch (key)
  {
    case 'f': //BACK ( F )
    turnZ(1,1);
    break;
    case 'F': //FRONT ( F' )
    turnZ(1,-1);
    break;
    case 'b': //BACK ( B )
    turnZ(-1,-1);
    break;
    case 'B': //FRONT ( B' )
    turnZ(-1,1);
    break;
    
    case 'u': //UP ( U )
    turnY(-1,1);
    break;
    case 'U': //DOWN( U' )
    turnY(-1,-1);
    break;
    case 'd': //UP ( D )
    turnY(1,-1);
    break;
    case 'D': //DOWN( D' )
    turnY(1,1);
    break;
    
    case 'l': //LEFT( L )
    turnX(-1,-1);
    break;
    case 'L': //RIGHT( L' )
    turnX(-1,1);
    break;
    case 'r': //LEFT( R )
    turnX(1,1);
    break;
    case 'R': //RIGHT( R' )
    turnX(1,-1);
    break;
  }
}
