class Cross{ 
  

void start1(){
  int[] temp = cubo7();
  if(temp != null){
     for(int i : temp){
        Move q = allMoves[i];
        sequence.add(q);
     }
     println("cubo 7 giusto");
  } else {
    println("cubo 7 già giusto");
  }
}

//------------------------------------------------------------------------------------

void start2(){
  int[] temp = cubo15();
  if(temp != null){
     for(int i : temp){
        Move q = allMoves[i];
        sequence.add(q);
   }
   println("cubo 15 giusto");
  } else {
    println("cubo 15 già giusto");
  }
}

//-------------------------------------------------------------------------------------

void start3(){
  int[] temp = cubo17();
  if(temp != null){
     for(int i : temp){
        Move q = allMoves[i];
        sequence.add(q);
   }
   println("cubo 17 giusto");
  } else {
    println("cubo 17 già giusto");
  }
}

//-------------------------------------------------------------------------------------

void start4(){
  int[] temp = cubo25();
  if(temp != null){
    for(int i : temp){
        Move q = allMoves[i];
        sequence.add(q);
    }
   println("cubo 25 giusto");
  } else {
    println("cubo 25 già giusto");
  }
}

//--------------------------------------------------------------------------------------
  
int[] cubo7() {
    int[] ass = null;    
      if(cube[7].y ==-1){                             //nella fila alta
         if (cube[7].faces[2].normal.y == -1) {                   //faccia bianca orientata verso l'alto
           if(cube[7].x == -1){ int[] temp = {7, 7};
             ass = temp; }
           else if(cube[7].x == 1){ int[] temp = {3, 3, 7, 7};
             ass = temp; } 
           else if((cube[7].x == 0)&&(cube[7].z == 1)){int[] temp = {2, 7, 7};
             ass = temp; } 
           else if((cube[7].x == 0)&&(cube[7].z == -1)){int[] temp = {3, 7, 7}; //sequence.add(U);sequence.add(L);sequence.add(L);
             ass = temp; }
         }
         else if(cube[7].faces[2].normal.y != -1) {          //faccia bianca non rientata verso l'alto
           if(cube[7].z==1){int[] temp = {9, 7, 8};  //sequence.add(F);sequence.add(l);sequence.add(f);
             ass = temp; }
           else if(cube[7].z==-1){int[] temp = {11, 6, 10};//sequence.add(b);sequence.add(L);sequence.add(B);}
             ass = temp; }
           else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {2, 9, 7, 8};//sequence.add(u);sequence.add(F);sequence.add(l);sequence.add(f);}
             ass = temp; }
           else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {3, 9, 7, 8}; //sequence.add(U);sequence.add(F);sequence.add(l);sequence.add(f);}
             ass = temp; }
         }
       }
       
       if(cube[7].y == 0){                                           // nella fila  media
        if(cube[7].faces[2].normal.z == 1){
          if(cube[7].x == -1){int[] temp = {7}; //sequence.add(l);
            ass = temp; }
          else if(cube[7].x == 1){int[] temp = {1, 1, 5, 0, 0}; //sequence.add(d);sequence.add(d);sequence.add(R);sequence.add(D);sequence.add(D);}
            ass = temp; }
        }else if(cube[7].faces[2].normal.z == -1){
          if(cube[7].x == -1){int[] temp = {6}; //sequence.add(L);
            ass = temp; }
          else if(cube[7].x == 1){int[] temp = {1, 1, 4, 0, 0}; //sequence.add(d);sequence.add(d);sequence.add(r);sequence.add(D);sequence.add(D);}
            ass = temp; }
        }else if(cube[7].faces[2].normal.x == -1) {
          if(cube[7].z ==-1) {int[] temp = {0, 11, 1}; //sequence.add(D);sequence.add(b);sequence.add(d);}
            ass = temp; }
          else if(cube[7].z ==1){int[] temp = {1, 9, 0}; //sequence.add(d);sequence.add(F);sequence.add(D);}
            ass = temp; }
        }else if(cube[7].faces[2].normal.x == 1) {
          if(cube[7].z==1) {int[] temp = {1, 8, 0}; //sequence.add(d);sequence.add(f);sequence.add(D);}
            ass = temp; }
          else if(cube[7].z ==-1){int[] temp = {0, 10, 1}; //sequence.add(D);sequence.add(B);sequence.add(d);}
            ass = temp; }
        }
      }
                     
      if(cube[7].y == 1){             //nella fila bassa
        if (cube[7].faces[2].normal.y == 1){       //faccia bianca orientata verso il basso
          if(cube[7].z==-1){int[] temp = {10, 0, 11,1 }; //sequence.add(B);sequence.add(D);sequence.add(b);sequence.add(d);}
            ass = temp; }
          else if(cube[7].z==1){int[] temp = {8, 1, 9, 0}; //sequence.add(f);sequence.add(d);sequence.add(F);sequence.add(D);}
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {4, 0, 0, 5, 1, 1}; //sequence.add(r);sequence.add(D);sequence.add(D);sequence.add(R);sequence.add(d);sequence.add(d);}
            ass = temp; }
          //else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {100}; //println("cubo7 giusto");
            //ass = temp; }
        }else if(cube[7].faces[2].normal.y != 1){   //faccia bianca  non orientata verso il basso
          if(cube[7].z==1){int[] temp = {8, 7}; //sequence.add(f);sequence.add(l);}
            ass = temp; }
          else if(cube[7].z==-1){int[] temp = {10, 6}; //sequence.add(B);sequence.add(L);}
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {5, 0, 10, 1}; //sequence.add(R);sequence.add(D);sequence.add(B);sequence.add(d);}
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {6, 1, 9, 0}; //sequence.add(L);sequence.add(d);sequence.add(F);sequence.add(D);}
            ass = temp; }
        }
      }
   return ass;     
}  
 
//--------------------------------------------------------- 
 
 int[] cubo15() {   
    int[] bss = null;
       if(cube[15].y ==-1){                                       //nella fila alta
         if (cube[15].faces[2].normal.y == -1) {                   //faccia bianca orientata verso l'alto
           if(cube[15].x == -1){int[] temp = {2, 11, 11}; //sequence.add(u);sequence.add(b);sequence.add(b);}
             bss = temp; }
           if(cube[15].x == 1){int[] temp = {3, 11, 11}; //sequence.add(U);sequence.add(b);sequence.add(b);}
             bss = temp; }
           if((cube[15].x == 0)&&(cube[15].z == 1)){int[] temp = {3, 3, 11, 11}; //sequence.add(U);sequence.add(U);sequence.add(b);sequence.add(b);}  
             bss = temp; }
           if((cube[15].x == 0)&&(cube[15].z == -1)){int[] temp = {11, 11}; //sequence.add(b);sequence.add(b);}
             bss = temp; }
         }
        else if(cube[15].faces[2].normal.y != -1) {          //faccia bianca non rientata verso l'alto
           if(cube[15].z==1){int[] temp = {3, 4, 10, 5}; //sequence.add(U);sequence.add(r);sequence.add(B);sequence.add(R);}
             bss = temp; }
           if(cube[15].z==-1){int[] temp = {2, 4, 10, 5}; //sequence.add(u);sequence.add(r);sequence.add(B);sequence.add(R);}
             bss = temp; }
           if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {4, 10, 5}; //sequence.add(r);sequence.add(B);sequence.add(R);}
             bss = temp; }
           if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {6, 11, 7}; //sequence.add(L);sequence.add(b);sequence.add(l);}
             bss = temp; }
         }
       }
       
       
       if(cube[15].y == 0){                                           // nella fila  media
        if(cube[15].faces[2].normal.z == 1){
          if(cube[15].x == -1){int[] temp = {1, 7, 0}; //sequence.add(d);sequence.add(l);sequence.add(D);}
            bss = temp; }
          else if(cube[15].x == 1){int[] temp = {0, 5, 1}; //sequence.add(D);sequence.add(R);sequence.add(d);}
            bss = temp; }
        }else if(cube[15].faces[2].normal.z == -1){
          if(cube[15].x == -1){int[] temp = {1, 6, 0}; //sequence.add(d);sequence.add(L);sequence.add(D);}
            bss = temp; }
          else if(cube[15].x == 1){int[] temp = {0, 4, 1}; //sequence.add(D);sequence.add(r);sequence.add(d);}
            bss = temp; }
        }else if(cube[15].faces[2].normal.x == -1) {
          if(cube[15].z ==-1) {int[] temp = {11}; //sequence.add(b);}
            bss = temp; }
          else if(cube[15].z ==1){int[] temp = {1, 6, 6, 0, 11}; //sequence.add(d);sequence.add(L);sequence.add(L);sequence.add(D);sequence.add(b);}
            bss = temp; }
        }else if(cube[15].faces[2].normal.x == 1) {
          if(cube[15].z==1) {int[] temp = {0, 5, 5, 1, 10}; //sequence.add(D);sequence.add(R);sequence.add(R);sequence.add(d);sequence.add(B);}
            bss = temp; }
          else if(cube[15].z ==-1){int[] temp = {10}; //sequence.add(B);}     
            bss = temp; }
        }  
      }
                
        
      if(cube[15].y == 1){          //nella fila bassa
        if (cube[15].faces[2].normal.y == 1){       //faccia bianca orientata verso il basso
          //if(cube[15].z==-1){int[] temp = {100}; //println("cubo15 giusto");
            //bss = temp; }
          if(cube[15].z==1){int[] temp = {8, 1, 1, 9, 0, 0}; //sequence.add(f);sequence.add(d);sequence.add(d);sequence.add(F);sequence.add(D);sequence.add(D);}
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {5, 0, 4, 1}; //sequence.add(R);sequence.add(D);sequence.add(r);sequence.add(d);}
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {6, 1, 7, 0}; //sequence.add(L);sequence.add(d);sequence.add(l);sequence.add(D);}
            bss = temp; }
        }else if(cube[15].faces[2].normal.y != 1){   //faccia bianca  non orientata verso il basso
          if(cube[15].z==1){int[] temp = {9, 0, 5, 1}; // F';D';R';D
            bss = temp; }
          if(cube[15].z==-1){int[] temp = {11, 0, 4, 1}; // B;D';R;D
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {5, 10}; // R';B'
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {7, 11}; // L;B
            bss = temp; }
        }                                                                                                                                         
      }
   return bss;
}

//------------------------------------------------------------

int[] cubo17() {   
    int[] css = null;
       if(cube[17].y ==-1){                             //nella fila alta
         if (cube[17].faces[2].normal.y == -1) {                   //faccia bianca orientata verso l'alto
           if(cube[17].x == -1){int[] temp = {3, 8, 8}; //sequence.add(U);sequence.add(f);sequence.add(f);}
             css = temp; }
           if(cube[17].x == 1){int[] temp = {2, 8, 8}; //sequence.add(u);sequence.add(f);sequence.add(f);}
             css = temp; }
           if((cube[17].x == 0)&&(cube[17].z == 1)){int[] temp = {8, 8}; //sequence.add(f);sequence.add(f);}  
             css = temp; }
           if((cube[17].x == 0)&&(cube[17].z == -1)){int[] temp = {3, 3, 8, 8}; //sequence.add(U);sequence.add(U);sequence.add(f);sequence.add(f);}
             css = temp; }
         }
         else if(cube[17].faces[2].normal.y != -1) {          //faccia bianca non rientata verso l'alto
           if(cube[17].z==1){int[] temp = {3, 5, 8, 4}; //sequence.add(U);sequence.add(R);sequence.add(f);sequence.add(r);}
             css = temp; }
           if(cube[17].z==-1){int[] temp = {2, 5, 8, 4}; //sequence.add(u);sequence.add(R);sequence.add(f);sequence.add(r);}
             css = temp; }
           if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {5, 8, 4}; //sequence.add(R);sequence.add(f);sequence.add(r);}
             css = temp; }
           if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {7, 9, 6}; //sequence.add(l);sequence.add(F);sequence.add(L);}
             css = temp; }
         }
       }       
       
       if(cube[17].y == 0){                                           // nella fila  media
        if(cube[17].faces[2].normal.z == 1){
          if(cube[17].x == -1){int[] temp = {0, 7, 1}; //sequence.add(D);sequence.add(l);sequence.add(d);}
            css = temp; }
          else if(cube[17].x == 1){int[] temp = {1, 5, 0}; //sequence.add(d);sequence.add(R);sequence.add(D);}
            css = temp; }
        }else if(cube[17].faces[2].normal.z == -1){
          if(cube[17].x == -1){int[] temp = {0, 6, 1}; //sequence.add(D);sequence.add(L);sequence.add(d);}
            css = temp; }
          else if(cube[17].x == 1){int[] temp = {1, 4, 0}; //sequence.add(d);sequence.add(r);sequence.add(D);}
            css = temp; }
        }else if(cube[17].faces[2].normal.x == -1) {
          if(cube[17].z ==-1) {int[] temp = {0, 6, 6, 1, 9}; //sequence.add(D);sequence.add(L);sequence.add(L);sequence.add(d);sequence.add(F);}
            css = temp; }
          else if(cube[17].z ==1){int[] temp = {9}; //sequence.add(F);}
            css = temp; }
        }else if(cube[17].faces[2].normal.x == 1) {
          if(cube[17].z==1) {int[] temp = {8}; //sequence.add(f);}
            css = temp; }
          else if(cube[17].z ==-1){int[] temp = {1, 4, 4, 0, 8}; //sequence.add(d);sequence.add(r);sequence.add(r);sequence.add(D);sequence.add(f);}
            css = temp; }
        }
      }
       
      if(cube[17].y == 1){          //nella fila bassa
        if (cube[17].faces[2].normal.y == 1){       //faccia bianca orientata verso il basso
          if(cube[17].z==-1){int[] temp = {11, 1, 4, 4, 0, 8}; //sequence.add(b);sequence.add(d);sequence.add(r);sequence.add(r);sequence.add(D);sequence.add(f);}
            css = temp; }
          //if(cube[17].z==1){int[] temp = {100}; //println("cubo17 giusto");
            //css = temp; }
          if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {5, 1, 4, 0}; //sequence.add(R);sequence.add(d);sequence.add(r);sequence.add(D);}
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {7, 0, 6, 1}; //sequence.add(l);sequence.add(D);sequence.add(L);sequence.add(d);}
            css = temp; }
        }else if(cube[17].faces[2].normal.y != 1){   //faccia bianca  non orientata verso il basso
          if(cube[17].z==1){int[] temp = {9, 1, 5, 0}; //sequence.add(F);sequence.add(d);sequence.add(R);sequence.add(D);}
            css = temp; }
          if(cube[17].z==-1){int[] temp = {11, 1, 5, 0}; //sequence.add(b);sequence.add(d);sequence.add(R);sequence.add(D);}
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {4, 8}; //sequence.add(r);sequence.add(f);}
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {6, 9}; //sequence.add(L);sequence.add(F);}
            css = temp; }
        }
      }
    return css;
 }
 
//---------------------------------------------------------------------------
 
 int[] cubo25() {   
    int[] dss = null;
       if(cube[25].y ==-1){                                   //nella fila alta
         if (cube[25].faces[2].normal.y == -1) {                   //faccia bianca orientata verso l'alto
           if(cube[25].x == -1){int[] temp = {3, 3, 5, 5}; //sequence.add(U);sequence.add(U);sequence.add(R);sequence.add(R);}
             dss = temp; }
           if(cube[25].x == 1){int[] temp = {5, 5}; //sequence.add(R);sequence.add(R);}
             dss = temp; }
           if((cube[25].x == 0)&&(cube[25].z == 1)){int[] temp = {3, 5, 5}; //sequence.add(U);sequence.add(R);sequence.add(R);} 
             dss = temp; }
           if((cube[25].x == 0)&&(cube[25].z == -1)){int[] temp = {2, 5, 5}; //sequence.add(u);sequence.add(R);sequence.add(R);}
             dss = temp; }
         }
         else if(cube[25].faces[2].normal.y != -1) {          //faccia bianca non rientata verso l'alto
           if(cube[25].z==1){int[] temp = {8, 5, 9}; //sequence.add(f);sequence.add(R);sequence.add(F);}
             dss = temp; }
           if(cube[25].z==-1){int[] temp = {10, 4, 11}; //sequence.add(B);sequence.add(r);sequence.add(b);}
             dss = temp; }
           if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {2, 8, 5, 9}; //sequence.add(u);sequence.add(f);sequence.add(R);sequence.add(F);}
             dss = temp; }
           if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {3, 8, 5, 9}; //sequence.add(U);sequence.add(f);sequence.add(R);sequence.add(F);}
             dss = temp; }
         }
       }       
       
       if(cube[25].y == 0){                                           // nella fila  media
        if(cube[25].faces[2].normal.z == 1){
          if(cube[25].x == -1){int[] temp = {0, 9, 9, 1, 5}; //sequence.add(D);sequence.add(F);sequence.add(F);sequence.add(d);sequence.add(R);}
            dss = temp; }
          else if(cube[25].x == 1){int[] temp = {5}; //sequence.add(R);}
            dss = temp; }
        }else if(cube[25].faces[2].normal.z == -1){
          if(cube[25].x == -1){int[] temp = {1, 11, 11, 0, 4}; //sequence.add(d);sequence.add(b);sequence.add(b);sequence.add(D);sequence.add(r);}
            dss = temp; }
          else if(cube[25].x == 1){int[] temp = {4}; //sequence.add(r);}
            dss = temp; }
        }else if(cube[25].faces[2].normal.x == -1) {
          if(cube[25].z ==-1) {int[] temp = {1, 11, 0}; //sequence.add(d);sequence.add(b);sequence.add(D);}
            dss = temp; }
          else if(cube[25].z ==1){int[] temp = {0, 9, 1}; //sequence.add(D);sequence.add(F);sequence.add(d);}
            dss = temp; }
        }else if(cube[25].faces[2].normal.x == 1) {
          if(cube[25].z==1) {int[] temp = {0, 8, 1}; //sequence.add(D);sequence.add(f);sequence.add(d);}
            dss = temp; }
          else if(cube[25].z ==-1){int[] temp = {1, 10, 0}; //sequence.add(d);sequence.add(B);sequence.add(D);}
            dss = temp; }
        }
      }              
        
      if(cube[25].y == 1){          //nella fila bassa
        if (cube[25].faces[2].normal.y == 1){       //faccia bianca orientata verso il basso
          if(cube[25].z==-1){int[] temp = {11, 1, 10, 0}; //sequence.add(b);sequence.add(d);sequence.add(B);sequence.add(D);}
            dss = temp; }
          if(cube[25].z==1){int[] temp = {9, 0, 8, 1}; //sequence.add(F);sequence.add(D);sequence.add(f);sequence.add(d);}
            dss = temp; }
          //if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {100}; //println("cubo 25 giusto");
            //dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {6, 0, 0, 7, 1, 1}; //sequence.add(L);sequence.add(D);sequence.add(D);sequence.add(l);sequence.add(d);sequence.add(d);}
            dss = temp; }
        }else if(cube[25].faces[2].normal.y != 1){   //faccia bianca  non orientata verso il basso
          if(cube[25].z==1){int[] temp = {9, 5}; //sequence.add(F);sequence.add(R);}
            dss = temp; }
          if(cube[25].z==-1){int[] temp = {11, 4}; //sequence.add(b);sequence.add(r);}
            dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {4, 0, 8, 1}; //sequence.add(r);sequence.add(D);sequence.add(f);sequence.add(d);}
            dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {6, 0, 9, 1}; //sequence.add(L);sequence.add(D);sequence.add(F);sequence.add(d);}
            dss = temp; }
        } 
      }
   return dss;
  }
}
