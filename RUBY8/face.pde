
class Face {
  //Per semplicità do ad ogni singolo cubetto 6 faccie 
  //Ogni faccia ha un colore e un vettore perpendicolare alla faccia
  // es: vettore = (0,0,1) é la faccia davanti (verso schermo) con z = 1
  
  PVector normal;
  color c;
  
  Face(PVector normal, color c) {
    this.normal = normal;
    this.c = c;
  }
  
  void turnZ(float angle) {          
    PVector v2 = new PVector();                                  //creo un nuovo vettore
    v2.x = round(normal.x * cos(angle) - normal.y *sin(angle));  //trasformo le componenti con la matrice di rotazione 
    v2.y = round(normal.x * sin(angle) + normal.y *cos(angle));  // approssimo i valori all numero inero 
    v2.z = round(normal.z);
    normal = v2;                                                 // salva il vettore ruotato nell vettore originale
  }
  
  void turnY(float angle) {
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.z *sin(angle));  //trasformo le componenti con la matrice di rotazione rispetto all asse y in uno spazio 3D
    v2.z = round(normal.x * sin(angle) + normal.z *cos(angle));
    v2.y = round(normal.y);
    normal = v2;
  }
  
  void turnX(float angle) {
    PVector v2 = new PVector();
    v2.y = round(normal.y * cos(angle) - normal.z *sin(angle));  //trasformo le componenti con la matrice di rotazione rispetto all asse x in uno spazio 3D
    v2.z = round(normal.y * sin(angle) + normal.z *cos(angle));
    v2.x = round(normal.x);
    normal = v2;
  
  }
  
  void show() {
    pushMatrix();  //salva l'attuale sistema matriciale le trasformazioni di matrice vanno fatte tra pushMatrix() e popMatrix()
    fill(c);       //riempio la faccia con il colore 
    noStroke();
    rectMode(CENTER);  //costruisco un rettangolo posizionato al cento
    translate(0.5*normal.x, 0.5*normal.y, 0.5*normal.z);  //traslo le faccie rispettivamente a metà del vettore perpendicolare 
    
                               //si può fare di meglio ma funziona comunque
                               //se il vettore é parallelo al asse z non si deve ruotare niente
    if (abs( normal.x) > 0) {  //se il vettore é parallelo al asse x ruoto la faccia rispetto a y
      rotateY(HALF_PI);
    } else if (abs(normal.y) > 0) { //se il vettore é parallelo al asse y ruoto la faccia rispetto a x
      rotateX(HALF_PI);
    }
    
    square(0, 0, 1);  //quadrato di dimensione 1
    popMatrix();  // ripristina il sistema matriciale salvato
  }  
}  
