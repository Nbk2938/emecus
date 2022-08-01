
void turnX(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {                     //check in all the cubies
    cubie qb = cube[i];
    if (qb.x == index) {                                      //the onces with their x-position identical to the index
      PMatrix2D matrix = new PMatrix2D();                     //create an identity matrix 2x2
      matrix.rotate(dir*HALF_PI);                             //rotate the matrix
      matrix.translate(qb.y, qb.z);                           //traslate an ridimention the matrix
      qb.update(qb.x, round(matrix.m02), round(matrix.m12));  //save the new positions 
      qb.turnFacesX(dir);                                     //turn the colored faces at last
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
