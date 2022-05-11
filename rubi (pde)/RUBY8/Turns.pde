
void turnX(int index, int dir) {
  for (int i = 0; i < cube.length; i++) {                     //mi riferisco a tutti i cubetti
    cubie qb = cube[i];
    if (qb.x == index) {                                      //tutti cubi con la posizione rispetto all' asse x uguale a 1 o -1
      PMatrix2D matrix = new PMatrix2D();                     //creo una matrice 2D di quella specifica faccia
      matrix.rotate(dir*HALF_PI);                             //ruoto la matrice di 90 gradi nella direzione specificata come argomento
      matrix.translate(qb.y, qb.z);                           //traslo le nuovi posizioni alla vecchie posizini
      qb.update(qb.x, round(matrix.m02), round(matrix.m12));  //salvo le nuove posizioni del dcubetto
      qb.turnFacesX(dir);                                     // infine giro i le faccie che contengono i colori
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

void turnZ(int index, int dir) {                              //mi riferisco a tutti i cubetti
  for (int i = 0; i < cube.length; i++) {
    cubie qb = cube[i];
    if (qb.z == index) {                                      //tutti cubi con la posizione rispetto all' asse x uguale a 1 o -1
      PMatrix2D matrix = new PMatrix2D();                     //creo una matrice 2D di quella specifica faccia
      matrix.rotate(dir*HALF_PI);                             //faccio una rotazione di  90 gradi di questa matrice 
      matrix.translate(qb.x, qb.y);                           //sposta l' oggetto all'interno della finestra di visualizzazione 
      qb.update(round(matrix.m02), round(matrix.m12), qb.z);  //salvo le nuove posizioni del dcubetto
      qb.turnFacesZ(dir);                                     //Infine giro i le faccie che contengono i colori
    }
  }
}
