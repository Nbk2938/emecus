   
   
void keyPressed() {                   // for user interface

  if (key == ' '){
    if(spacePressed != true){ //begin scramble process
      cam.reset();
      println("random scramble...");
      println(" ");
      println("scrambled array sent to ardino ");
      send(sendScrambled); //send scramble sequence to arduino
      
      sleep(900);
      
      currentMove.start();
      spacePressed = true; // start the animation 
      
    }
  }
  if (key == 's'){   // begin solution process
    if(keySPressed != true){
      if(startSolution){
       
        println("risolvendo...");
        println(" ");
        println("solution array sent to ardino");
        send(sendSolution); // send solution sequence to arduino
        cam.reset();
        
        sleep(1500); //1500 
        
        whatch.start(); //start stopwatch 
        
        for(int i : solutionArray){   // addind the solution to the animation sequence 
          Move q = allMoves[i];
          sequence.add(q);
          keySPressed = true;
         }
      }
    }
  }
  
            // under this line there are only the single moves and single algorithms
            
/*   switch(key)     // implementation of single moves e addition to the sequence
   {
     case 'f':     
     sequence.add(f);
     break;
     case 'F': 
     sequence.add(F);
     break;
     case 'b': 
     sequence.add(b);
     break;
     case 'B': 
     sequence.add(B);
     break;
     case 'u': 
     sequence.add(u);
     break;
     case 'U': 
     sequence.add(U);
     break;
     case 'd': 
     sequence.add(d);
     break;
     case 'D':
     sequence.add(D);
     break;
     case 'l':
     sequence.add(l);
     break;
     case 'L': 
     sequence.add(L);
     break;
     case 'r': 
     sequence.add(r);
     break;
     case 'R': 
     sequence.add(R);
     break;
     
     case 'm':
     sequence.add(m);
     break;
     case 'M':
     sequence.add(M);
     break;
     case 'e':
     sequence.add(e);
     break;
     case 'E':
     sequence.add(E);
     break;
     case 's':
     sequence.add(s);
     break;
     case 'S':
     sequence.add(S);
     break; 
     
     case 'i':  // x                                implementation of axis rotations 
     sequence.add(r);  //  turnX(1,1);
     sequence.add(M);  //  turnX(0,1);
     sequence.add(L);  //  turnX(-1,1);
     break;
     case 'I':  // x'
     sequence.add(R);  //turnX(1,-1);
     sequence.add(m);  //turnX(0,-1);
     sequence.add(l);  //turnX(-1,-1);
     break;
     case 'j':  // y
     sequence.add(U);  //sequence.add(r);
     sequence.add(e);  //turnY(0,1);
     sequence.add(d);  //turnY(-1,1);
     break;
     case 'J':  // y'
     sequence.add(u);  //turnY(1,-1);
     sequence.add(E);  //turnY(0,-1);
     sequence.add(D);  //turnY(-1,-1);
     break;
     case 'k':  // z
     sequence.add(f);  //turnZ(1,1);
     sequence.add(s);  //turnZ(0,1);
     sequence.add(B);  //turnZ(-1,1);
     break;
     case 'K':  // z'
     sequence.add(F);  //turnZ(1,-1);
     sequence.add(S);  //turnZ(0,-1);
     sequence.add(b);  //turnZ(-1,-1);
     break;
   }
   
                                            //implementation of the 118 algorithms   
   
     
     if (key == '\n' ) { //save string and reset to zero
       saved = typing; 
       System.out.println(saved);
       typing = 0; 
     } else if ((key > 47) && ( key < 58)){ // save a key sequence: ex key 9 + key 5 -> gives number 95 
      typing = 10 * typing + Character.getNumericValue(key); 
     }
    
    switch(saved) {                                               //just for single algorithms
       //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                  //every single case and F2L algoritms(from 1 to 41)
       case 1:                                                   
       char F2L_1[] = {(2),(4),(3),(5)};
       for(int i : F2L_1){
         Move q = allMoves[i];
         sequence.add(q);
       } 
       break;
       
       case 2:
       char F2L_2[] = {(8),(5),(9),(4)};
       for(int i : F2L_2){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 3:
       char F2L_3[] = {(3),(4),(2),(5),(2),(2),(4),(3),(5)};
       for(int i : F2L_3){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 4:
       char F2L_4[] = {(2),(9),(3),(8),(2),(2),(9),(2),(8)};
       for(int i : F2L_4){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 5:
       char F2L_5[] = {(3),(4),(3),(3),(5),(2),(2),(4),(3),(5)};
       for(int i : F2L_5){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 6:
       char F2L_6[] = {(2),(9),(2),(2),(8),(3),(3),(9),(2),(5)};
       for(int i : F2L_6){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 7:
       char F2L_7[] = {(9),(2),(8),(2),(2),(4),(2),(5)};
       for(int i : F2L_7){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 8:
       char F2L_8[] = {(4),(3),(5),(2),(2),(9),(3),(8)};
       for(int i : F2L_8){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 9:
       char F2L_9[] = {(9),(3),(8)};
       for(int i : F2L_9){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 10:
       char F2L_10[] = {(4),(2),(5)};
       for(int i : F2L_10){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 11:
       char F2L_11[] = {(3),(4),(3),(5),(2),(9),(3),(8)};
       for(int i : F2L_11){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 12:
       char F2L_12[] = {(3),(4),(2),(5),(2),(4),(2),(5)};
       for(int i : F2L_12){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
      
       case 13:
       char F2L_13[] = {(3),(4),(3),(3),(5),(2),(9),(3),(8)};
       for(int i : F2L_13){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 14:
       char F2L_14[] = {(5),(2),(2),(4),(4),(2),(5),(5),(2),(4)};
       for(int i : F2L_14){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 15:
       char F2L_15[] = {(2),(9),(2),(8),(3),(9),(3),(8)};
       for(int i : F2L_15){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 16:
       char F2L_16[] = {(3),(4),(3),(5),(2),(4),(2),(5)};
       for(int i : F2L_16){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 17:
       char F2L_17[] = {(4),(3),(3),(5),(3),(4),(2),(5)};
       for(int i : F2L_17){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 18:
       char F2L_18[] = {(4),(2),(2),(5),(9),(3),(8),(3),(3),(9),(2),(8)};
       for(int i : F2L_18){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 19:
       char F2L_19[] = {(2),(4),(2),(2),(5),(2),(4),(3),(5)};
       for(int i : F2L_19){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 20:
       char F2L_20[] = {(4),(3),(5),(3),(9),(2),(2),(8),(3),(3),(9),(2),(8)};
       for(int i : F2L_20){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 21:
       char F2L_21[] = {(4),(3),(5),(3),(3),(4),(2),(5)};
       for(int i : F2L_21){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 22:
       char F2L_22[] = {(9),(2),(8),(2),(2),(9),(3),(8)};
       for(int i : F2L_22){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 23:
       char F2L_23[] = {(2),(2),(4),(4),(2),(2),(5),(3),(4),(3),(4),(4)};
       for(int i : F2L_23){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 24:
       char F2L_24[] = {(4),(2),(5),(2),(9),(2),(8),(3),(9),(2),(8)};
       for(int i : F2L_24){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 25:
       char F2L_25[] = {(2),(4),(3),(5),(8),(5),(9),(4)};
       for(int i : F2L_25){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 26:
       char F2L_26[] = {(3),(9),(2),(8),(5),(8),(4),(9)};
       for(int i : F2L_26){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 27:
       char F2L_27[] = {(9),(3),(8),(2),(9),(3),(8)};
       for(int i : F2L_27){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 28:
       char F2L_28[] = {(4),(2),(5),(3),(4),(2),(5)};
       for(int i : F2L_28){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 29:
       char F2L_29[] = {(4),(3),(5),(2),(4),(3),(5)};
       for(int i : F2L_29){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 30:
       char F2L_30[] = {(9),(2),(8),(3),(9),(2),(8)};
       for(int i : F2L_30){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 31:
       char F2L_31[] = {(3),(4),(3),(5),(2),(2),(4),(3),(5)};
       for(int i : F2L_31){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 32:
       char F2L_32[] = {(2),(4),(2),(5),(2),(2),(4),(2),(5)};
       for(int i : F2L_32){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 33:
       char F2L_33[] = {(3),(4),(2),(5),(2),(9),(3),(8)};
       for(int i : F2L_33){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 34:
       char F2L_34[] = {(2),(9),(3),(8),(3),(4),(2),(5)};
       for(int i : F2L_34){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 35:
       char F2L_35[] = {(4),(3),(5),(2),(9),(2),(8)};
       for(int i : F2L_35){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 36:
       char F2L_36[] = {(4),(2),(5),(3),(4),(2),(5),(3),(4),(2),(5)};
       for(int i : F2L_36){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 37:
       char F2L_37[] = {(4),(3),(5),(3),(4),(2),(5),(2),(2),(4),(3),(5)};
       for(int i : F2L_37){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 38:
       char F2L_38[] = {(4),(2),(5),(2),(2),(4),(3),(5),(2),(4),(2),(5)};
       for(int i : F2L_38){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 39:
       char F2L_39[] = {(4),(3),(5),(2),(9),(3),(8),(3),(9),(3),(8)};
       for(int i : F2L_39){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 40:
       char F2L_40[] = {(4),(2),(5),(3),(4),(3),(5),(2),(2),(9),(3),(8)};
       for(int i : F2L_40){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 41:
       char F2L_41[] = {(4),(3),(5),(2),(9),(2),(2),(8),(3),(3),(9),(2),(8)};
       for(int i : F2L_41){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                      //every single case and OLL algortims(from 42 to 98)       
       case 42:                                                                       
       char OLL_1[] = {(4),(2),(2),(5),(5),(8),(4),(9),(3),(3),(5),(8),(4),(9)};
       for(int i : OLL_1){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 43:                                                                       
       char OLL_2[] = {(8),(4),(2),(5),(3),(9),(11),(2),(7),(3),(6),(10)};
       for(int i : OLL_2){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 44:                                                                       
       char OLL_3[] = {(11),(2),(7),(3),(6),(10),(3),(8),(4),(2),(5),(3),(9)};
       for(int i : OLL_3){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 45:                                                                       
       char OLL_4[] = {(11),(2),(7),(3),(6),(10),(2),(8),(4),(2),(5),(3),(9)};
       for(int i : OLL_4){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 46:                                                                       
       char OLL_5[] = {(5),(8),(8),(7),(8),(6),(8),(4)};
       for(int i : OLL_5){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 47:                                                                       
       char OLL_6[] = {(7),(8),(8),(5),(9),(4),(9),(6)};
       for(int i : OLL_6){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 48:                                                                       
       char OLL_7[] = {(7),(8),(5),(8),(4),(9),(9),(6)};
       for(int i : OLL_7){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 49:                                                                       
       char OLL_8[] = {(4),(3),(3),(5),(2),(2),(5),(8),(4),(9)};
       for(int i : OLL_8){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 50:                                                                       
       char OLL_9[] = {(4),(2),(5),(3),(5),(8),(4),(4),(2),(5),(3),(9)};
       for(int i : OLL_9){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 51:                                                                       
       char OLL_10[] = {(4),(2),(5),(2),(5),(8),(4),(9),(4),(2),(2),(5)};
       for(int i : OLL_10){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 52:                                                                       
       char OLL_11[] = {(9),(6),(3),(7),(2),(8),(4),(11),(2),(10),(3),(5)};
       for(int i : OLL_11){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 53:                                                                       
       char OLL_12[] = {(8),(4),(2),(5),(3),(9),(2),(8),(4),(2),(5),(3),(9)};
       for(int i : OLL_12){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 54:                                                                       
       char OLL_13[] = {(7),(9),(6),(3),(7),(8),(6),(9),(2),(8)};
       for(int i : OLL_13){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 55:                                                                       
       char OLL_14[] = {(5),(8),(4),(2),(5),(9),(4),(8),(3),(9)};
       for(int i : OLL_14){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 56:                                                                       
       char OLL_15[] = {(5),(9),(4),(6),(3),(7),(2),(5),(8),(4)};
       for(int i : OLL_15){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 57:                                                                       
       char OLL_16[] = {(7),(8),(6),(4),(2),(5),(3),(7),(9),(6)};
       for(int i : OLL_16){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 58:                                                                       
       char OLL_17[] = {(4),(2),(5),(2),(5),(8),(4),(9),(2),(2),(5),(8),(4),(9)};
       for(int i : OLL_17){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 59:                                                                       
       char OLL_18[] = {(8),(4),(2),(5),(2),(9),(2),(2),(9),(7),(8),(6)};
       for(int i : OLL_18){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 60:                                                                       
       char OLL_19[] = {(4),(6),(11),(4),(11),(5),(10),(5),(7),(5),(8),(4),(9)};
       for(int i : OLL_19){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 61:                                                                       
       char OLL_20[] = {(4),(6),(11),(4),(11),(5),(10),(5),(5),(7),(7),(8),(4),(9),(6)};
       for(int i : OLL_20){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 62:                                                                       
       char OLL_21[] = {(4),(2),(2),(5),(3),(4),(2),(5),(3),(4),(3),(5)};
       for(int i : OLL_21){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 63:                                                                       
       char OLL_22[] = {(4),(3),(3),(4),(4),(3),(4),(4),(3),(4),(4),(3),(3),(4)};
       for(int i : OLL_22){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 64:                                                                       
       char OLL_23[] = {(4),(4),(1),(5),(2),(2),(4),(0),(5),(2),(2),(5)};
       for(int i : OLL_23){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 65:                                                                       
       char OLL_24[] = {(5),(9),(7),(8),(4),(9),(6),(8)};
       for(int i : OLL_24){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 66:                                                                       
       char OLL_25[] = {(5),(8),(4),(10),(5),(9),(4),(11)};
       for(int i : OLL_25){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 67:                                                                       
       char OLL_26[] = {(5),(3),(4),(3),(5),(2),(2),(4)};
       for(int i : OLL_26){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 68:                                                                       
       char OLL_27[] = {(7),(2),(6),(2),(7),(2),(2),(6)};
       for(int i : OLL_27){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 69:                                                                       
       char OLL_28[] = {(5),(7),(8),(4),(6),(3),(3),(5),(7),(8),(4),(6)};
       for(int i : OLL_28){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 70:                                                                       
       char OLL_29[] = {(7),(7),(3),(7),(11),(6),(2),(7),(7),(3),(6),(10),(7)};
       for(int i : OLL_29){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 71:                                                                       
       char OLL_30[] = {(4),(4),(2),(5),(10),(4),(3),(4),(4),(2),(4),(11),(5)};
       for(int i : OLL_30){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 72:                                                                       
       char OLL_31[] = {(5),(3),(8),(2),(4),(3),(5),(9),(4)};
       for(int i : OLL_31){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 73:                                                                       
       char OLL_32[] = {(4),(2),(10),(3),(5),(2),(4),(11),(5)};
       for(int i : OLL_32){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 74:                                                                       
       char OLL_33[] = {(4),(2),(5),(3),(5),(8),(4),(9)};
       for(int i : OLL_33){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 75:                                                                       
       char OLL_34[] = {(4),(2),(4),(4),(3),(5),(8),(4),(2),(4),(3),(9)};
       for(int i : OLL_34){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 76:                                                                       
       char OLL_35[] = {(4),(3),(3),(4),(4),(8),(4),(9),(4),(2),(2),(5)};
       for(int i : OLL_35){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 77:                                                                       
       char OLL_36[] = {(6),(3),(7),(3),(6),(2),(7),(2),(7),(9),(6),(8)};
       for(int i : OLL_36){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 78:                                                                       
       char OLL_37[] = {(8),(4),(3),(5),(3),(4),(2),(5),(9)};
       for(int i : OLL_37){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 79:                                                                       
       char OLL_38[] = {(4),(2),(5),(2),(4),(3),(5),(3),(5),(8),(4),(9)};
       for(int i : OLL_38){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 80:                                                                       
       char OLL_39[] = {(7),(9),(6),(3),(7),(2),(8),(3),(6)};
       for(int i : OLL_39){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 81:                                                                       
       char OLL_40[] = {(5),(8),(4),(2),(5),(3),(9),(2),(4)};
       for(int i : OLL_40){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 82:                                                                       
       char OLL_41[] = {(4),(3),(5),(2),(2),(4),(2),(11),(3),(10),(3),(5)};
       for(int i : OLL_41){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 83:                                                                       
       char OLL_42[] = {(5),(2),(2),(4),(2),(5),(2),(4),(4),(11),(2),(10),(3),(5)};
       for(int i : OLL_42){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 84:                                                                       
       char OLL_43[] = {(10),(3),(5),(2),(4),(11)};
       for(int i : OLL_43){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 85:                                                                       
       char OLL_44[] = {(11),(2),(7),(3),(6),(10)};
       for(int i : OLL_44){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 86:                                                                       
       char OLL_45[] = {(8),(4),(2),(5),(3),(9)};
       for(int i : OLL_45){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 87:                                                                       
       char OLL_46[] = {(5),(3),(5),(8),(4),(9),(2),(4)};
       for(int i : OLL_46){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 88:                                                                       
       char OLL_47[] = {(9),(6),(3),(7),(2),(6),(3),(7),(2),(8)};
       for(int i : OLL_47){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 89:                                                                       
       char OLL_48[] = {(8),(4),(2),(5),(3),(4),(2),(5),(3),(9)};
       for(int i : OLL_48){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 90:                                                                       
       char OLL_49[] = {(5),(8),(5),(9),(4),(4),(3),(3),(10),(4),(11),(5)};
       for(int i : OLL_49){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 91:                                                                       
       char OLL_50[] = {(5),(8),(4),(4),(10),(5),(5),(9),(4),(4),(11),(5)};
       for(int i : OLL_50){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 92:                                                                       
       char OLL_51[] = {(11),(2),(7),(3),(6),(2),(7),(3),(6),(10)};
       for(int i : OLL_51){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 93:                                                                       
       char OLL_52[] = {(4),(2),(5),(2),(4),(3),(11),(3),(10),(5)};
       for(int i : OLL_52){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 94:                                                                       
       char OLL_53[] = {(5),(9),(7),(9),(6),(8),(7),(9),(6),(8),(8),(4)};
       for(int i : OLL_53){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 95:                                                                       
       char OLL_54[] = {(7),(8),(5),(8),(4),(9),(5),(8),(4),(9),(9),(6)};
       for(int i : OLL_54){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 96:                                                                       
       char OLL_55[] = {(4),(2),(2),(4),(4),(3),(4),(3),(5),(2),(2),(8),(4),(9)};
       for(int i : OLL_55){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 97:                                                                       
       char OLL_56[] = {(8),(4),(2),(5),(3),(4),(9),(7),(8),(5),(9),(6)};
       for(int i : OLL_56){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 98:                                                                       
       char OLL_57[] = {(4),(2),(5),(3),(5),(7),(8),(4),(9),(6)};
       for(int i : OLL_57){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                              //every single case and PLL algoritms(from 99 to 119)
       case 99:                                                                       
       char PLL_99[] = {(4),(4),(1),(10),(2),(10),(3),(11),(0),(4),(4),(9),(2),(8)};
       for(int i : PLL_99){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 100:                                                                       
       char PLL_100[] = {(6),(3),(7),(8),(8),(1),(5),(2),(4),(3),(4),(0),(8),(8)};
       for(int i : PLL_100){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 101:                                                                       
       char PLL_101[] = {(4),(4),(0),(8),(3),(8),(2),(9),(1),(4),(4),(11),(3),(10)};
       for(int i : PLL_101){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 102:                                                                       
       char PLL_102[] = {(4),(2),(5),(8),(8),(0),(7),(3),(6),(2),(6),(1),(8),(8)};
       for(int i : PLL_102){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
                  
       case 103:                                                                      
       char PLL_103[] = {(4),(2),(5),(3),(5),(8),(4),(4),(3),(5),(3),(4),(2),(5),(9)};
       for(int i : PLL_103){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 104:                                                                       
       char PLL_104[] = {(6),(2),(2),(6),(3),(9),(6),(8),(8),(3),(9),(2),(9),(7),(8),(3),(7)};
       for(int i : PLL_104){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 105:                                                                       
       char PLL_105[] = {(5),(2),(6),(2),(2),(4),(3),(5),(2),(2),(7),(4),(3)};
       for(int i : PLL_105){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 106:                                                                       
       char PLL_106[] = {(4),(2),(5),(9),(4),(2),(5),(3),(5),(8),(4),(4),(3),(5),(3)};
       for(int i : PLL_106){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 107:                                                                       
       char PLL_107[] = {(7),(3),(3),(6),(3),(3),(7),(9),(6),(3),(7),(2),(7),(8),(6),(6),(2)};
       for(int i : PLL_107){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 108:                                                                       
       char PLL_108[] = {(5),(2),(2),(4),(2),(2),(5),(8),(4),(2),(5),(3),(5),(9),(4),(4),(3)};
       for(int i : PLL_108){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 109:                                                                       
       char PLL_109[] = {(5),(2),(5),(3),(10),(5),(11),(11),(3),(10),(2),(10),(4),(11),(4)};
       for(int i : PLL_109){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 110:                                                                       
       char PLL_110[] = {(8),(4),(3),(5),(3),(4),(2),(5),(9),(4),(2),(5),(3),(5),(8),(4),(9)};
       for(int i : PLL_110){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 111:                                                                       
       char PLL_111[] = {(7),(3),(4),(2),(2),(6),(2),(5),(7),(3),(4),(2),(2),(6),(2),(5),(2)};
       for(int i : PLL_111){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 112:                                                                       
       char PLL_112[] = {(5),(2),(6),(2),(2),(4),(3),(7),(5),(2),(6),(2),(2),(4),(3),(7),(3)};
       for(int i : PLL_112){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 113:                                                                       
       char PLL_113[] = {(4),(3),(4),(2),(4),(2),(4),(3),(5),(3),(4),(4)};
       for(int i : PLL_113){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 114:                                                                       
       char PLL_114[] = {(4),(4),(2),(4),(2),(5),(3),(5),(3),(5),(2),(5)};
       for(int i : PLL_114){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 115:                                                                       
       char PLL_115[] = {(2),(9),(3),(8),(3),(8),(2),(8),(3),(9),(2),(8),(2),(8),(8),(3),(9),(2)};
       for(int i : PLL_115){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 116:                                                                       
       char PLL_116[] = {(5),(5),(7),(7),(1),(5),(5),(7),(7),(2),(2),(5),(5),(7),(7),(1),(5),(5),(7),(7)};
       for(int i : PLL_116){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 117:                                                                       
       char PLL_117[] = {(5),(8),(5),(11),(11),(4),(9),(5),(11),(11),(4),(4)};
       for(int i : PLL_117){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 118:                                                                       
       char PLL_118[] = {(4),(10),(4),(8),(8),(5),(11),(4),(8),(8),(4),(4)};
       for(int i : PLL_118){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       case 119:                                                                       
       char PLL_119[] = {(4),(10),(5),(8),(4),(11),(5),(9),(4),(11),(5),(8),(4),(10),(5),(9)};
       for(int i : PLL_119){
         Move q = allMoves[i];
         sequence.add(q);
       }break;
       
       //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  }
  saved = 0;                        */
  
  
  
  
  
}                              
