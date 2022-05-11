
class cubie {
  PMatrix3D matrix; //la matrice contiene la posizione del cubetto.La matrice rende semplice codificare le diverse rotazioni usando le funzioni gia preseni in processing 
  int x = 0;        //salvo anche singolarmente le componenti della posizione per semplificare la nominazione di un singolo cubetto.
  int y = 0;
  int z = 0;
  color c;
  Face[] faces = new Face[6]; // ogni singolo cubo a un vettore con le 6 faccie
  
  cubie(PMatrix3D m, int x, int y, int z) { // costruttore dei 27 cubetti. la loro posizione é raffigurata da una propria matrice3D 
    this.matrix = m;             
    this.x = x;
    this.y = y;
    this.z = z;
    //c = color(255);
    
    
    faces[0] = new Face( new PVector(0, 0, -1), color (0, 0, 255));      //blu (dietro)
    faces[1] = new Face( new PVector(0, 0, 1), color (0, 255, 51));      //verde (davanti)
    faces[2] = new Face( new PVector(0, 1, 0), color (255, 255, 255 ));  //bianco (sopra)
    faces[3] = new Face( new PVector(0, -1, 0), color (255, 255, 0));    //giallo (sotto)
    faces[4] = new Face( new PVector(1, 0, 0), color (255, 150, 0));     //arancio (destra)
    faces[5] = new Face( new PVector(-1, 0, 0), color (255, 0, 0));      //rosso (sinistra)
    
  }
  
  void turnFacesZ(int dir){   //gira tutte le faccie rispetto al asse z 
    for (Face f : faces) {
      f.turnZ(dir*HALF_PI);    
    }  
  }
  void turnFacesY(int dir){  //gira tutte le faccie rispetto al asse y
    for (Face f : faces) {
      f.turnY(dir*HALF_PI);    
    }  
  }
  void turnFacesX(int dir){  //gira tutte le faccie rispetto al asse x
    for (Face f : faces) {
      f.turnX(dir*HALF_PI);    
    }  
  }
 void update(int x, int y, int z) {
   matrix.reset();                       //reseta la matrice vecchia
   matrix.translate(x, y, z);            //salva le nuove posizini nella matrice
    this.x = x;
    this.y = y;
    this.z = z;
   
 }
 void show() {
  // fill(c);
  noFill();
   stroke(0);
   strokeWeight(0.03);
   pushMatrix();                // salva l'attuale sistema matriciale le trasformazioni di matrice vanno fatte tra pushMatrix() e popMatrix()
   applyMatrix(matrix);         // Moltiplica la matrice corrente per quella specificata attraverso i parametri.
   box(1);                      // costruisco il cubetto
   for ( Face f : faces) {      // mostro tutte le faccie
     f.show();
   }
   popMatrix();                 // ripristina il sistema matriciale salvato
 }
}
