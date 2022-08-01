class F2L { //creates partial solution. completes the two slices of the cube

  void startAngoloRV1(){ //the white corner is placed above were it schould be 
  int[] temp = spostaAngoloRossoVerde();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("AngoloRV giusto");
    }else{
     //println("AngoloRV giusto");
   } 
 }
 void startAngoloRV2(){ //the white corner is pared with the middle piece acording to it^s other two colors and placed in the rigth spot next to the cross
  int[] temp = inserisciAngoloRossoVerde();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("RossoVerde giusto");
    }else{
     //println("RossoVerde giusto");
   } 
 }
 
 //-----------------------------------------------------------------------------------
 
 void startAngoloBR1(){ //the white corner is placed above were it schould be
  int[] temp = spostaAngoloBluRosso();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("AngoloBR giusto");
    }else{
    //println("AngoloBR giusto");
   } 
 }
 void startAngoloBR2(){//the white corner is pared with the middle piece acording to it^s other two colors and placed in the rigth spot next to the cross
  int[] temp = inserisciAngoloBluRosso();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("BluRosso giusto");
    }else{
     //println("BluRosso giusto");
   } 
 }
 
 //-----------------------------------------------------------------------------------
 
 void startAngoloAB1(){ //the white corner is placed above were it schould be
  int[] temp = spostaAngoloArancioneBlu();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("AngoloAB giusto");
    }else{
     //println("AngoloAB giusto");
   } 
 }
 void startAngoloAB2(){ //the white corner is pared with the middle piece acording to it^s other two colors and placed in the rigth spot next to the cross
  int[] temp = inserisciAngoloArancioneBlu();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("ArancioneBlu giusto");
    }else{
     //println("ArancioneBlu giusto");
   } 
 }
 
 //---------------------------------------------------------------------------------
 
 void startAngoloVA1(){ //the white corner is placed above were it schould be
  int[] temp = spostaAngoloVerdeArancione();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("AngoloVA giusto");
    }else{
     //println("AngoloVA giusto");
   } 
 }
 void startAngoloVA2(){ //the white corner is pared with the middle piece acording to it^s other two colors and placed in the rigth spot next to the cross
  int[] temp = inserisciAngoloVerdeArancione();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     //println("VerdeArancione giusto");
    }else{
     //println("VerdeArancione giusto");
   } 
 }

//------------------------------------------------------------------------------------  
  
 int[] spostaAngoloRossoVerde() {// there are 8 possible position were the specific corner can be. the orientations is now irrelevant
   int[] spostaRV = null;
     if(cube[26].y == 1){
       if((cube[26].z == 1)&&(cube[26].x == 1)){int[] temp ={4, 2, 5, 3};
         spostaRV = temp; }
       if((cube[26].z == 1)&&(cube[26].x == -1)){int[] temp ={6, 3, 7};
         spostaRV = temp; }
       if((cube[26].z == -1)&&(cube[26].x == 1)){int[] temp ={11, 2, 10};
         spostaRV = temp; }
       if((cube[26].z == -1)&&(cube[26].x == -1)){int[] temp ={7, 2, 2, 6};
         spostaRV = temp; }
     }
     if(cube[26].y == -1){
       //if((cube[26].z == 1)&&(cube[26].x == 1)){int[] temp ={100}; // already in the right spot
         //spostaRV = temp; }
       if((cube[26].z == 1)&&(cube[26].x == -1)){int[] temp ={3};
         spostaRV = temp; }
       if((cube[26].z == -1)&&(cube[26].x == 1)){int[] temp ={2};
         spostaRV = temp; }
       if((cube[26].z == -1)&&(cube[26].x == -1)){int[] temp ={2, 2};
         spostaRV = temp; }
     }
  return spostaRV;
 }

//-------------------------------------------------------------------------------

 int[] spostaAngoloBluRosso() { // there are 8 possible position were the specific corner can be. the orientations is now irrelevant
   int[] spostaBR = null;
     if(cube[8].y == 1){
       if((cube[8].z == 1)&&(cube[8].x == 1)){int[] temp ={4, 2, 5};
         spostaBR = temp; }
       if((cube[8].z == 1)&&(cube[8].x == -1)){int[] temp ={6, 3, 7, 2};
         spostaBR = temp; }
       if((cube[8].z == -1)&&(cube[8].x == 1)){int[] temp ={11, 2, 2, 10};
         spostaBR = temp; }
       if((cube[8].z == -1)&&(cube[8].x == -1)){int[] temp ={10, 3, 11};
         spostaBR = temp; }
     }
     if(cube[8].y == -1){
       if((cube[8].z == 1)&&(cube[8].x == 1)){int[] temp ={2};
         spostaBR = temp; }
       //if((cube[8].z == 1)&&(cube[8].x == -1)){int[] temp ={100}; // already in the right spot
         //spostaBR = temp; }
       if((cube[8].z == -1)&&(cube[8].x == 1)){int[] temp ={2, 2};
         spostaBR = temp; }
       if((cube[8].z == -1)&&(cube[8].x == -1)){int[] temp ={3};
         spostaBR = temp; }
     }
   return spostaBR;
 }
 
 //--------------------------------------------------------------------
 
 int[] spostaAngoloArancioneBlu() { // there are 8 possible position were the specific corner can be. the orientations is now irrelevant
   int[] spostaAB = null;
     if(cube[6].y == 1){
       if((cube[6].z == 1)&&(cube[6].x == 1)){int[] temp ={4, 2, 2, 5};
         spostaAB = temp; }
       if((cube[6].z == 1)&&(cube[6].x == -1)){int[] temp ={8, 2, 9};
         spostaAB = temp; }
       if((cube[6].z == -1)&&(cube[6].x == 1)){int[] temp ={5, 3, 4};
         spostaAB = temp; }
       if((cube[6].z == -1)&&(cube[6].x == -1)){int[] temp ={7, 2, 6, 3};
         spostaAB = temp; }
     }
     if(cube[6].y == -1){
       if((cube[6].z == 1)&&(cube[6].x == 1)){int[] temp ={2, 2};
         spostaAB = temp; }
       if((cube[6].z == 1)&&(cube[6].x == -1)){int[] temp ={2};
         spostaAB = temp; }
       if((cube[6].z == -1)&&(cube[6].x == 1)){int[] temp ={3};
         spostaAB = temp; }
       //if((cube[6].z == -1)&&(cube[6].x == -1)){int[] temp ={100}; // already in the right spot
         //spostaAB = temp; }
     }
   return spostaAB;
 } 
 
 //-------------------------------------------------------------------
 
 int[] spostaAngoloVerdeArancione() { // there are 8 possible position were the specific corner can be. the orientations is now irrelevant
   int[] spostaVA = null;
     if(cube[24].y == 1){
       if((cube[24].z == 1)&&(cube[24].x == 1)){int[] temp ={9, 3, 8};
         spostaVA = temp; }
       if((cube[24].z == 1)&&(cube[24].x == -1)){int[] temp ={6, 2, 2, 7};
         spostaVA = temp; }
       if((cube[24].z == -1)&&(cube[24].x == 1)){int[] temp ={11, 2, 10, 3};
         spostaVA = temp; }
       if((cube[24].z == -1)&&(cube[24].x == -1)){int[] temp ={7, 2, 6};
         spostaVA = temp; }
     }
     if(cube[24].y == -1){
       if((cube[24].z == 1)&&(cube[24].x == 1)){int[] temp ={3};
         spostaVA = temp; }
       if((cube[24].z == 1)&&(cube[24].x == -1)){int[] temp ={2, 2};
         spostaVA = temp; }
       //if((cube[24].z == -1)&&(cube[24].x == 1)){int[] temp ={100}; // already in the right spot
         //spostaVA = temp; }
       if((cube[24].z == -1)&&(cube[24].x == -1)){int[] temp ={2};
         spostaVA = temp; }
     }
   return spostaVA;
 }
 
 //--------------------------------------------------------------------------------------------------
 
 int[] inserisciAngoloRossoVerde(){ //48 different permutations to check
   int[] inserisciRV = null;
   
     if(cube[26].faces[2].normal.z ==1){    //the white face of the cubie is oriented in z = 1  
       if(cube[23].faces[1].normal.y == -1){    //the red face of the other cubie is upward oriented. 4 possible positions
         if(cube[23].x==1){int[] temp = {2, 4, 3, 5};
           inserisciRV = temp; }
         if(cube[23].z==-1){int[] temp = {3, 4, 2, 5, 2, 2, 4, 3, 5};
           inserisciRV = temp; }
         if(cube[23].x==-1){int[] temp = {3, 4, 3, 3, 5, 2, 2, 4, 3, 5};
           inserisciRV = temp; }
         if(cube[23].z==1){int[] temp = {9, 2, 8, 2, 2, 4, 2, 5};
           inserisciRV = temp; }
       }
       if(cube[23].faces[4].normal.y == -1){   //the green face of the other cubie is upward oriented. 4 possible positions
         if(cube[23].x==-1){int[] temp = {9, 3, 8};
           inserisciRV = temp; }
         if(cube[23].z==-1){int[] temp = {3, 4, 3, 5, 2, 9, 3, 8};
           inserisciRV = temp; }
         if(cube[23].x==1){int[] temp = {3, 4, 3, 3, 5, 2, 9, 3, 8};
           inserisciRV = temp; }
         if(cube[23].z==1){int[] temp = {2, 9, 2, 8, 3, 9, 3, 8};
           inserisciRV = temp; }
       }
       if(cube[23].y==0){                     //the other cubie is in the middle slice. 8 possible permutations
         if(cube[23].faces[1].normal.z == 1){
           if(cube[23].x==1){int[] temp = {3, 4, 3, 5, 2, 2, 4, 3, 5};
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {3, 8, 3, 9, 2, 2, 9, 3, 8};
             inserisciRV = temp; }
         }
         if(cube[23].faces[1].normal.z == -1){
           if(cube[23].x==1){int[] temp = {2, 11, 3, 10, 9, 3, 8};//UBU'B'F'U'F
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {2, 10, 3, 11, 9, 3, 8};//UB'U'BF'U'F
             inserisciRV = temp; }
         }
         if(cube[23].faces[1].normal.x == 1){
           if(cube[23].z==1){int[] temp = {3, 4, 2, 5, 2, 9, 3, 8};
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {2, 2, 5, 3, 4, 3, 9, 3, 8};//UUR'U'RU'F'U'F
             inserisciRV = temp; }
         }
         if(cube[23].faces[1].normal.x == -1){
           if(cube[23].z==1){int[] temp = {6, 3, 7, 2, 9, 3, 8};//L'U'LUF'U'F
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {7, 3, 6, 2, 9, 3, 8};//LU'L'UF'U'F
             inserisciRV = temp; }
         }
       }
     }
     
     if(cube[26].faces[2].normal.x ==1){      //the white face of the cubie is oriented in x = 1  
       if(cube[23].faces[4].normal.y == -1){     //the green face of the other cubie is upward oriented. 4 possible positions
         if(cube[23].z==1){int[] temp = {8, 5, 9, 4};
           inserisciRV = temp; }
         if(cube[23].x==-1){int[] temp = {2, 9, 3, 8, 2, 2, 9, 2, 8};
           inserisciRV = temp; }
         if(cube[23].z==-1){int[] temp = {2, 9, 2, 2, 8, 3, 3, 9, 2, 8};
           inserisciRV = temp; }
         if(cube[23].x==1){int[] temp = {4, 3, 5, 2, 2, 9, 3, 8};
           inserisciRV = temp; }
      }
      if(cube[23].faces[1].normal.y == -1){  //the red face of the other cubie is upward oriented. 4 possible positions
        if(cube[23].z==-1){int[] temp = {4, 2, 5};
           inserisciRV = temp; }
        if(cube[23].x==-1){int[] temp = {3, 4, 2, 5, 2, 4, 2, 5};
           inserisciRV = temp; }
        if(cube[23].z==1){int[] temp = {5, 2, 2, 4, 4, 2, 5, 5, 2, 4};
           inserisciRV = temp; }
        if(cube[23].x==1){int[] temp = {3, 4, 3, 5, 2, 4, 2, 5};
           inserisciRV = temp; }
        
      }
      if(cube[23].y==0){                      //the other cubie is in the middle slice. 8 possible permutations
        if(cube[23].faces[1].normal.z == 1){
           if(cube[23].x==1){int[] temp = {2, 4, 2, 5, 2, 2, 4, 2, 5};
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {3, 6, 2, 7, 4, 2, 5};//U'L'ULRUR'
             inserisciRV = temp; }
        }
        if(cube[23].faces[1].normal.z == -1){
           if(cube[23].x==1){int[] temp = {2, 5, 2, 4, 2, 2, 4, 2, 5};//UR'URUURUR'
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {3, 7, 2, 6, 4, 2, 5};//U'LUL'RUR'
             inserisciRV = temp; } 
        }
        if(cube[23].faces[1].normal.x == 1){
           if(cube[23].z==1){int[] temp = {2, 9, 3, 8, 3, 4, 2, 5};
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {11, 2, 10, 3, 4, 2, 5};//BUB'U'RUR'
             inserisciRV = temp; }
        }
        if(cube[23].faces[1].normal.x == -1){
           if(cube[23].z==1){int[] temp = {2, 2, 8, 2, 9, 2, 4, 2, 5};//UUFUF'URUR'
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {10, 2, 11, 3, 4, 2, 5};//B'UBU'RUR'
             inserisciRV = temp; }
         } 
      }
    }
    
    if(cube[26].faces[2].normal.y ==-1){        //the white face of the cubie is upward oriented  
      if(cube[23].faces[1].normal.y == -1){        ///the red face of the other cubie is upward oriented. 4 possible positions
        if(cube[23].x==1){int[] temp = {4, 3, 3, 5, 3, 4, 2, 5};
          inserisciRV = temp; }
        if(cube[23].z==-1){int[] temp = {2, 4, 2, 2, 5, 2, 4, 3, 5};
          inserisciRV = temp; }
        if(cube[23].x==-1){int[] temp = {4, 3, 5, 3, 3, 4, 2, 5};
          inserisciRV = temp; }
        if(cube[23].z==1){int[] temp = {2, 2, 4, 4, 2, 2, 5, 3, 4, 3, 4, 4};
          inserisciRV = temp; }
      }
      if(cube[23].faces[4].normal.y == -1){  //the green face of the other cubie is upward oriented. 4 possible positions
        if(cube[23].z==1){int[] temp = {4, 2, 2, 5, 9, 3, 8, 3, 3, 9, 2, 8}; 
          inserisciRV = temp; }
        if(cube[23].x==-1){int[] temp = {4, 3, 5, 3, 9, 2, 2, 8, 3, 3, 9, 2, 8};
          inserisciRV = temp; }
        if(cube[23].z==-1){int[] temp = {9, 2, 8, 2, 2, 9, 3, 8};
          inserisciRV = temp; }
        if(cube[23].x==1){int[] temp = {4, 2, 5, 2, 9, 2, 8, 3, 9, 2, 8};
          inserisciRV = temp; }
      }
      if(cube[23].y==0){                      //the other cubie is in the middle slice. 8 possible permutations
        if(cube[23].faces[1].normal.z == 1){
          if(cube[23].x==1){int[] temp = {4, 2, 5, 3, 4, 2, 5, 3, 4, 2, 5};
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {2, 8, 3, 9, 9, 2, 8};//UFU'F'F'UF
             inserisciRV = temp; } 
        }
        if(cube[23].faces[1].normal.z == -1){
           if(cube[23].x==1){int[] temp = {3, 5, 2, 4, 4, 3, 5};//U'R'URRU'R'
             inserisciRV = temp; }
           if(cube[23].x==-1){int[] temp = {7, 3, 6, 3, 4, 2, 5, 2, 4, 3, 5};//LU'L'U'RUR'URU'R'
             inserisciRV = temp; } 
        }
        if(cube[23].faces[1].normal.x == 1){
           if(cube[23].z==1){int[] temp = {4, 3, 5, 2, 9, 2, 8};
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {11, 2, 10, 4, 3, 3, 5, 2, 4, 3, 5};//BUB'RU'U'R'URU'R'
             inserisciRV = temp; }
        }
        if(cube[23].faces[1].normal.x == -1){
           if(cube[23].z==1){int[] temp = {6, 3, 7, 9, 2, 2, 8, 3, 9, 2, 8};//L'U'LF'UUFU'F'UF
             inserisciRV = temp; }
           if(cube[23].z==-1){int[] temp = {2, 2, 7, 3, 3, 6, 9, 2, 8};//UULU'U'L'F'UF
             inserisciRV = temp; }
         } 
      }
    } 
    
  return inserisciRV;
 }
 
 //------------------------------------------------------------------------------------------------------------
 
 int[] inserisciAngoloBluRosso(){ //48 different permutations to check
   int[] inserisciBR = null;
     
     if(cube[8].faces[2].normal.x==-1){ //the white face of the cubie is oriented in x = -1
       if(cube[5].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].z==1){int[] temp = {2, 8, 3, 9};
           inserisciBR = temp; }
         if(cube[5].x==1){int[] temp = {3, 8, 2, 9, 2, 2, 8, 3, 9};
           inserisciBR = temp; }
         if(cube[5].z==-1){int[] temp = {3, 8, 3, 3, 9, 2, 2, 8, 3, 9 };
           inserisciBR = temp; }
         if(cube[5].x==-1){int[] temp = {6, 2, 7, 2, 2, 8, 2, 9};
           inserisciBR = temp; }
       }
       if(cube[5].faces[1].normal.y==-1){ //the red face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].z==-1){int[] temp = {6, 3, 7};
           inserisciBR = temp; }
         if(cube[5].x==1){int[] temp = {3, 8, 3, 9, 2, 6, 3, 7};
           inserisciBR = temp; }
         if(cube[5].z==1){int[] temp = {3, 8, 3, 3, 9, 2, 6, 3, 7};
           inserisciBR = temp; }
         if(cube[5].x==-1){int[] temp = {2, 6, 2, 7, 3, 6, 3, 7};
           inserisciBR = temp; }
       }
       if(cube[5].y==0){                    //the other cubie is in the middle slice. 8 possible permutations
         if(cube[5].faces[5].normal.x==-1){
           if(cube[5].z==1){int[] temp = {3, 8, 3, 9, 2, 2, 8, 3, 9};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {3, 7, 3, 6, 2, 2, 6, 3, 7};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.x==1){
           if(cube[5].z==1){int[] temp = {2, 4, 3, 5, 6, 3, 7};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {2, 5, 3, 4, 6, 3, 7};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==1){
           if(cube[5].x==-1){int[] temp = {3, 8, 2, 9, 2, 6, 3, 7};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {2, 2, 9, 3, 8, 3, 6, 3, 7};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==-1){
           if(cube[5].x==-1){int[] temp = {10, 3, 11, 2, 6, 3, 7};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {11, 3, 10, 2, 6, 3, 7};
             inserisciBR = temp; }
         }
       }
     }
     
     if(cube[8].faces[2].normal.z==1){ //the white face of the cubie is oriented in z = 1
       if(cube[5].faces[1].normal.y==-1){ //the red face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].x==-1){int[] temp = {7, 9, 6, 8};
           inserisciBR = temp; }
         if(cube[5].z==-1){int[] temp = {2, 6, 3, 7, 2, 2, 6, 2, 7};
           inserisciBR = temp; }
         if(cube[5].x==1){int[] temp = {2, 6, 2, 2, 7, 3, 3, 6, 2, 7};
           inserisciBR = temp; }
         if(cube[5].z==1){int[] temp = {8, 3, 9, 2, 2, 6, 3, 7};
           inserisciBR = temp; }
       }
       if(cube[5].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].x==1){int[] temp = {8, 2, 9};
           inserisciBR = temp; }
         if(cube[5].z==-1){int[] temp = {3, 8, 2, 9, 2, 8, 2, 9};
           inserisciBR = temp; }
         if(cube[5].x==-1){int[] temp = {9, 2, 2, 8, 8, 2, 9, 9, 2, 8};
           inserisciBR = temp; }
         if(cube[5].z==1){int[] temp = {3, 8, 3, 9, 2, 8, 2, 9};
           inserisciBR = temp; }
       } 
       if(cube[5].y==0){                      //the other cubie is in the middle slice. 8 possible permutations
         if(cube[5].faces[5].normal.x==-1){
           if(cube[5].z==1){int[] temp = {2, 8, 2, 9, 2, 2, 8, 2, 9};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {3, 10, 2, 11, 8, 2, 9};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.x==1){
           if(cube[5].z==1){int[] temp = {2, 9, 2, 8, 2, 2, 8, 2, 9};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {3, 11, 2, 10, 8, 2, 9};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==1){
           if(cube[5].x==-1){int[] temp = {2, 6, 3, 7, 3, 8, 2, 9};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {4, 2, 5, 3, 8, 2, 9};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==-1){
           if(cube[5].x==-1){int[] temp = {2, 2, 7, 2, 6, 2, 8, 2, 9};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {5, 2, 4, 3, 8, 2, 9};
             inserisciBR = temp; }
         }
       }
     }
     
     if(cube[8].faces[2].normal.y==-1){ //the white face of the cubie is upward oriented
       if(cube[5].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].z==1){int[] temp = {8, 3, 3, 9, 3, 8, 2, 9};
           inserisciBR = temp; }
         if(cube[5].x==1){int[] temp = {2, 8, 2, 2, 9, 2, 8, 3, 9};
           inserisciBR = temp; }
         if(cube[5].z==-1){int[] temp = {8, 3, 9, 3, 3, 8, 2, 9};
           inserisciBR = temp; }
         if(cube[5].x==-1){int[] temp = {2, 2, 8, 8, 2, 2, 9, 3, 8, 3, 8, 8};
           inserisciBR = temp; }
       }
       if(cube[5].faces[1].normal.y==-1){ //the red face of the other cubie is upward oriented. 4 possible positions
         if(cube[5].x==-1){int[] temp = {8, 2, 2, 9, 6, 3, 7, 3, 3, 6, 2, 7};
           inserisciBR = temp; }
         if(cube[5].z==-1){int[] temp = {8, 3, 9, 3, 6, 2, 2, 7, 3, 3, 6, 2, 7};
           inserisciBR = temp; }
         if(cube[5].x==1){int[] temp = {6, 2, 7, 2, 2, 6, 3, 7};
           inserisciBR = temp; }
         if(cube[5].z==1){int[] temp = {8, 2, 9, 2, 6, 2, 7, 3, 6, 2, 7};
           inserisciBR = temp; }
       }
       if(cube[5].y==0){                     //the other cubie is in the middle slice. 8 possible permutations
         if(cube[5].faces[5].normal.x==-1){
           if(cube[5].z==1){int[] temp = {8, 2, 9, 3, 8, 2, 9, 3, 8, 2, 9};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {2, 7, 3, 6, 6, 2, 7};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.x==1){
           if(cube[5].z==1){int[] temp = {3, 9, 2, 8, 8, 3, 9};
             inserisciBR = temp; }
           if(cube[5].z==-1){int[] temp = {11, 3, 10, 3, 8, 2, 9, 2, 8, 3, 9};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==1){
           if(cube[5].x==-1){int[] temp = {8, 3, 9, 2, 6, 2, 7};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {4, 2, 5, 8, 3, 3, 9, 2, 8, 3, 9};
             inserisciBR = temp; }
         }
         if(cube[5].faces[5].normal.z==-1){
           if(cube[5].x==-1){int[] temp = {10, 3, 11, 6, 2, 2, 7, 3, 6, 2, 7};
             inserisciBR = temp; }
           if(cube[5].x==1){int[] temp = {2, 2, 11, 3, 3, 10, 6, 2, 7};
             inserisciBR = temp; }
         }
       }
     }
   return inserisciBR;
 }
 
 //--------------------------------------------------------------------------------------------------
 
 int[] inserisciAngoloArancioneBlu(){ //48 different permutations to check
   int[] inserisciAB = null;
   
     if(cube[6].faces[2].normal.z==-1){ //the white face of the cubie is oriented in z = -1
       if(cube[3].faces[0].normal.y==-1){ //the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].x==-1){int[] temp = {2, 7, 3, 6};
           inserisciAB = temp; }
         if(cube[3].z==1){int[] temp = {3, 7, 2, 6, 2, 2, 7, 3, 6};
           inserisciAB = temp; }
         if(cube[3].x==1){int[] temp = {3, 7, 3, 3, 6, 2, 2, 7, 3, 6};
           inserisciAB = temp; }
         if(cube[3].z==-1){int[] temp = {10, 2, 11, 2, 2, 7, 2, 6};
           inserisciAB = temp; }
       }
       if(cube[3].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].x==1){int[] temp = {10, 3, 11};
           inserisciAB = temp; }
         if(cube[3].z==1){int[] temp = {3, 7, 3, 6, 2, 10, 3, 11};
           inserisciAB = temp; }
         if(cube[3].x==-1){int[] temp = {3, 7, 3, 3, 6, 2, 10, 3, 11};
           inserisciAB = temp; }
         if(cube[3].z==-1){int[] temp = {2, 10, 2, 11, 3, 10, 3, 11};
           inserisciAB = temp; }
       }
       if(cube[3].y==0){                    //the other cubie is in the middle slice. 8 possible permutations
         if(cube[3].faces[0].normal.z==-1){
           if(cube[3].x==-1){int[] temp = {3, 7, 3, 6, 2, 2, 7, 3, 6};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {3, 11, 3, 10, 2, 2, 10, 3, 11};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.z==1){
           if(cube[3].x==-1){int[] temp = {2, 8, 3, 9, 10, 3, 11};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {2, 9, 3, 8, 10, 3, 11};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==-1){
           if(cube[3].z==-1){int[] temp = {3, 7, 2, 6, 2, 10, 3, 11};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {2, 2, 6, 3, 7, 3, 10, 3, 11};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==1){
           if(cube[3].z==-1){int[] temp = {5, 3, 4, 2, 10, 3, 11};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {4, 3, 5, 2, 10, 3, 11};
             inserisciAB = temp; }
         }
       }
     }
     
     if(cube[6].faces[2].normal.x==-1){ //the white face of the cubie is oriented in x = -1
       if(cube[3].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].z==-1){int[] temp = {11, 6, 10, 7};
           inserisciAB = temp; }
         if(cube[3].x==1){int[] temp = {2, 10, 3, 11, 2, 2, 10, 2, 11};
           inserisciAB = temp; }
         if(cube[3].z==1){int[] temp = {2, 10, 2, 2, 11, 3, 3, 10, 2, 11};
           inserisciAB = temp; }
         if(cube[3].x==-1){int[] temp = {7, 3, 6, 2, 2, 10, 3, 11};
           inserisciAB = temp; }
       }
       if(cube[3].faces[0].normal.y==-1){ //the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].z==1){int[] temp = {7, 2, 6};
           inserisciAB = temp; }
         if(cube[3].x==1){int[] temp = {3, 7, 2, 6, 2, 7, 2, 6};
           inserisciAB = temp; }
         if(cube[3].z==-1){int[] temp = {6, 2, 2, 7, 7, 2, 6, 6, 2, 7};
           inserisciAB = temp; }
         if(cube[3].x==-1){int[] temp = {3, 7, 3, 6, 2, 7, 2, 6};
           inserisciAB = temp; }
       }
       if(cube[3].y==0){                     //the other cubie is in the middle slice. 8 possible permutations
         if(cube[3].faces[0].normal.z==-1){
           if(cube[3].x==-1){int[] temp = {2, 7, 2, 6, 2, 2, 7, 2, 6};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {3, 5, 2, 4, 7, 2, 6};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.z==1){
           if(cube[3].x==-1){int[] temp = {2, 6, 2, 7, 2, 2, 7, 2, 6};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {3, 4, 2, 5, 7, 2, 6};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==-1){
           if(cube[3].z==-1){int[] temp = {2, 10, 3, 11, 3, 7, 2, 6};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {8, 2, 9, 3, 7, 2, 6};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==1){
           if(cube[3].z==-1){int[] temp = {2, 2, 11, 2, 10, 2, 7, 2, 6};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {9, 2, 8, 3, 7, 2, 6};
             inserisciAB = temp; }
         }
       }
     }
     
     if(cube[6].faces[2].normal.y==-1){ //the white face of the cubie is upward oriented
       if(cube[3].faces[0].normal.y==-1){ //the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].x==-1){int[] temp = {7, 3, 3, 6, 3, 7, 2, 6};
           inserisciAB = temp; }
         if(cube[3].z==1){int[] temp = {2, 7, 2, 2, 6, 2, 7, 3, 6};
           inserisciAB = temp; }
         if(cube[3].x==1){int[] temp = {7, 3, 6, 3, 3, 7, 2, 6};
           inserisciAB = temp; }
         if(cube[3].z==-1){int[] temp = {2, 2, 7, 7, 2, 2, 6, 3, 7, 3, 7, 7};
           inserisciAB = temp; }
       }
       if(cube[3].faces[5].normal.y==-1){ //the blue face of the other cubie is upward oriented. 4 possible positions
         if(cube[3].z==-1){int[] temp = {7, 2, 2, 6, 10, 3, 11, 3, 3, 10, 2, 11};
           inserisciAB = temp; }
         if(cube[3].x==1){int[] temp = {7, 3, 6, 3, 10, 2, 2, 11, 3, 3, 10, 2, 11};
           inserisciAB = temp; }
         if(cube[3].z==1){int[] temp = {10, 2, 11, 2, 2, 10, 3, 11};
           inserisciAB = temp; }
         if(cube[3].x==-1){int[] temp = {7, 2, 6, 2, 10, 2, 11, 3, 10, 2, 11};
           inserisciAB = temp; }
       }
       if(cube[3].y==0){                     //the other cubie is in the middle slice. 8 possible permutations
         if(cube[3].faces[0].normal.z==-1){
           if(cube[3].x==-1){int[] temp = {7, 2, 6, 3, 7, 2, 6, 3, 7, 2, 6};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {2, 11, 3, 10, 10, 2, 11};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.z==1){
           if(cube[3].x==-1){int[] temp = {3, 6, 2, 7, 7, 3, 6};
             inserisciAB = temp; }
           if(cube[3].x==1){int[] temp = {4, 3, 5, 3, 7, 2, 6, 2, 7, 3, 6};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==-1){
           if(cube[3].z==-1){int[] temp = {7, 3, 6, 2, 10, 2, 11};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {8, 2, 9, 7, 3, 3, 6, 2, 7, 3, 6};
             inserisciAB = temp; }
         }
         if(cube[3].faces[0].normal.x==1){
           if(cube[3].z==-1){int[] temp = {5, 3, 4, 10, 2, 2, 11, 3, 10, 2, 11};
             inserisciAB = temp; }
           if(cube[3].z==1){int[] temp = {2, 2, 4, 3, 3, 5, 10, 2, 11};
             inserisciAB = temp; }
         }
       }
     }
   return inserisciAB;
 }
 
 //--------------------------------------------------------------------
 
 int[] inserisciAngoloVerdeArancione(){ //48 different permutations to check
   int[] inserisciVA = null;
   
     if(cube[24].faces[2].normal.x==1){//the white face of the cubie is oriented in x = 1
       if(cube[21].faces[4].normal.y==-1){//the green face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].z==-1){int[] temp = {2, 11, 3, 10};
           inserisciVA = temp; }
         if(cube[21].x==-1){int[] temp = {3, 11, 2, 10, 2, 2, 11, 3, 10};
           inserisciVA = temp; }
         if(cube[21].z==1){int[] temp = {3, 11, 3, 3, 10, 2, 2, 11, 3, 10};
           inserisciVA = temp; }
         if(cube[21].x==1){int[] temp = {5, 2, 4, 2, 2, 11, 2, 10};
           inserisciVA = temp; }
       }  
       if(cube[21].faces[0].normal.y==-1){//the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].z==1){int[] temp = {5, 3, 4};
           inserisciVA = temp; }
         if(cube[21].x==-1){int[] temp = {3, 11, 3, 10, 2, 5, 3, 4};
           inserisciVA = temp; }
         if(cube[21].z==-1){int[] temp = {3, 11, 3, 3, 10, 2, 5, 3, 4};
           inserisciVA = temp; }
         if(cube[21].x==1){int[] temp = {2, 5, 2, 4, 3, 5, 3, 4};
           inserisciVA = temp; }
       }
       if(cube[21].y==0){                   //the other cubie is in the middle slice. 8 possible permutations
         if(cube[21].faces[4].normal.x==1){
           if(cube[21].z==-1){int[] temp = {3, 11, 3, 10, 2, 2, 11, 3, 10};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {3, 4, 3, 5, 2, 2, 5, 3, 4};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.x==-1){
           if(cube[21].z==-1){int[] temp = {2, 7, 3, 6, 5, 3, 4};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {2, 6, 3, 7, 5, 3, 4};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==-1){
           if(cube[21].x==1){int[] temp = {3, 11, 2, 10, 2, 5, 3, 4};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {2, 2, 10, 3, 11, 3, 5, 3, 4};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==1){
           if(cube[21].x==1){int[] temp = {9, 3, 8, 2, 5, 3, 4};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {8, 3, 9, 2, 5, 3, 4};
             inserisciVA = temp; }
         }
       }
     }
     
     if(cube[24].faces[2].normal.z==-1){//the white face of the cubie is oriented in z = -1
       if(cube[21].faces[0].normal.y==-1){//the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].x==1){int[] temp = {4, 10, 5, 11};
           inserisciVA = temp; }
         if(cube[21].z==1){int[] temp = {2, 5, 3, 4, 2, 2, 5, 2, 4};
           inserisciVA = temp; }
         if(cube[21].x==-1){int[] temp = {2, 5, 2, 2, 4, 3, 3, 5, 2, 4};
           inserisciVA = temp; }
         if(cube[21].z==-1){int[] temp = {11, 3, 10, 2, 2, 5, 3, 4};
           inserisciVA = temp; }
       }
       if(cube[21].faces[4].normal.y==-1){//the green face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].x==-1){int[] temp = {11, 2, 10};
           inserisciVA = temp; }
         if(cube[21].z==1){int[] temp = {3, 11, 2, 10, 2, 11, 2, 10};
           inserisciVA = temp; }
         if(cube[21].x==1){int[] temp = {10, 2, 2, 11, 11, 2, 10, 10, 2, 11};
           inserisciVA = temp; }
         if(cube[21].z==-1){int[] temp = {3, 11, 3, 10, 2, 11, 2, 10};
           inserisciVA = temp; }
       }
       if(cube[21].y==0){                    //the other cubie is in the middle slice. 8 possible permutations
         if(cube[21].faces[4].normal.x==1){
           if(cube[21].z==-1){int[] temp = {2, 11, 2, 10, 2, 2, 11, 2, 10};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {3, 9, 2, 8, 11, 2, 10};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.x==-1){
           if(cube[21].z==-1){int[] temp = {2, 10, 2, 11, 2, 2, 11, 2, 10};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {3, 8, 2, 9, 11, 2, 10};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==-1){
           if(cube[21].x==1){int[] temp = {2, 5, 3, 4, 3, 11, 2, 10};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {7, 2, 6, 3, 11, 2, 10};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==1){
           if(cube[21].x==1){int[] temp = {2, 2, 4, 2, 5, 2, 11, 2, 10};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {6, 2, 7, 3, 11, 2, 10};
             inserisciVA = temp; }
         }
       }
     }
     
     if(cube[24].faces[2].normal.y==-1){//the white face of the cubie is upward oriented
       if(cube[21].faces[4].normal.y==-1){//the green face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].z==-1){int[] temp = {11, 3, 3, 10, 3, 11, 2, 10};
           inserisciVA = temp; }
         if(cube[21].x==-1){int[] temp = {2, 11, 2, 2, 10, 2, 11, 3, 10};
           inserisciVA = temp; }
         if(cube[21].z==1){int[] temp = {11, 3, 10, 3, 3, 11, 2, 10};
           inserisciVA = temp; }
         if(cube[21].x==1){int[] temp = {2, 2, 11, 11, 2, 2, 10, 3, 11, 3, 11, 11};
           inserisciVA = temp; }
       }
       if(cube[21].faces[0].normal.y==-1){//the orange face of the other cubie is upward oriented. 4 possible positions
         if(cube[21].x==1){int[] temp = {11, 2, 2, 10, 5, 3, 4, 3, 3, 5, 2, 4};
           inserisciVA = temp; }
         if(cube[21].z==1){int[] temp = {11, 3, 10, 3, 5, 2, 2, 4, 3, 3, 5, 2, 4};
           inserisciVA = temp; }
         if(cube[21].x==-1){int[] temp = {5, 2, 4, 2, 2, 5, 3, 4};
           inserisciVA = temp; }
         if(cube[21].z==-1){int[] temp = {11, 2, 10, 2, 5, 2, 4, 3, 5, 2, 4};
           inserisciVA = temp; }
       } 
       if(cube[21].y==0){                    //the other cubie is in the middle slice. 8 possible permutations
         if(cube[21].faces[4].normal.x==1){
           if(cube[21].z==-1){int[] temp = {11, 2, 10, 3, 11, 2, 10, 3, 11, 2, 10};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {2, 4, 3, 5, 5, 2, 4};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.x==-1){
           if(cube[21].z==-1){int[] temp = {3, 10, 2, 11, 11, 3, 10};
             inserisciVA = temp; }
           if(cube[21].z==1){int[] temp = {8, 3, 9, 3, 11, 2, 10, 2, 11, 3, 10};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==-1){
           if(cube[21].x==1){int[] temp = {11, 3, 10, 2, 5, 2, 4};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {7, 2, 6, 11, 3, 3, 10, 2, 11, 3, 10};
             inserisciVA = temp; }
         }
         if(cube[21].faces[4].normal.z==1){
           if(cube[21].x==1){int[] temp = {9, 3, 8, 5, 2, 2, 4, 3, 5, 2, 4};
             inserisciVA = temp; }
           if(cube[21].x==-1){int[] temp = {2, 2, 8, 3, 3, 9, 5, 2, 4};
             inserisciVA = temp; }
         }
       }
     }
   return inserisciVA; 
 }
 
 
}
