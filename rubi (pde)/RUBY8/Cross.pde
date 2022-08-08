
class Cross{      //AL for compleating the white cross
  
void start1(){ //search al for this specific cube and add it to solutionArray
  int[] temp = cubo7();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
     draw();
     //println("cubo 7 giusto");
  } else {
    //println("cubo 7 già giusto");
  }
}
  
//------------------------------------------------------------------------------------

void start2(){ //search al for this specific cube and add it to solutionArray
  int[] temp = cubo15();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
   }
   //println("cubo 15 giusto");
   draw();
  } else {
    //println("cubo 15 già giusto");
  }
}

//-------------------------------------------------------------------------------------

void start3(){ //search al for this specific cube and add it to solutionArray
  int[] temp = cubo17();
  if(temp != null){
    concatenateSolution(temp);
     for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
   }
   //println("cubo 17 giusto");
   draw();
  } else {
    //println("cubo 17 già giusto");
  }
}

//-------------------------------------------------------------------------------------

void start4(){ //search al for this specific cube and add it to solutionArray
  int[] temp = cubo25();
  if(temp != null){
    concatenateSolution(temp);
    for(int i : temp){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
    }
   //println("cubo 25 giusto");
   draw();
  } else {
    //println("cubo 25 già giusto");
  }
}

//--------------------------------------------------------------------------------------
  
int[] cubo7() {
    int[] ass = null;    
      if(cube[7].y ==-1){                             //in the upper slice
         if (cube[7].faces[2].normal.y == -1) {                   //white face is upward oriented 4 possible permutatins
           if(cube[7].x == -1){ int[] temp = {7, 7};
             ass = temp; }
           else if(cube[7].x == 1){ int[] temp = {3, 3, 7, 7};
             ass = temp; } 
           else if((cube[7].x == 0)&&(cube[7].z == 1)){int[] temp = {2, 7, 7};
             ass = temp; } 
           else if((cube[7].x == 0)&&(cube[7].z == -1)){int[] temp = {3, 7, 7}; 
             ass = temp; }
         }
         else if(cube[7].faces[2].normal.y != -1) {           //white face is not upward oriented 4 possible permutations
           if(cube[7].z==1){int[] temp = {9, 7, 8};  
             ass = temp; }
           else if(cube[7].z==-1){int[] temp = {11, 6, 10};
             ass = temp; }
           else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {2, 9, 7, 8};
             ass = temp; }
           else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {3, 9, 7, 8}; 
             ass = temp; }
         }
       }
       
       if(cube[7].y == 0){                                         //in the middle slice 8 possible permutations
        if(cube[7].faces[2].normal.z == 1){
          if(cube[7].x == -1){int[] temp = {7}; 
            ass = temp; }
          else if(cube[7].x == 1){int[] temp = {1, 1, 5, 0, 0}; 
            ass = temp; }
        }else if(cube[7].faces[2].normal.z == -1){
          if(cube[7].x == -1){int[] temp = {6}; 
            ass = temp; }
          else if(cube[7].x == 1){int[] temp = {1, 1, 4, 0, 0}; 
            ass = temp; }
        }else if(cube[7].faces[2].normal.x == -1) {
          if(cube[7].z ==-1) {int[] temp = {0, 11, 1}; 
            ass = temp; }
          else if(cube[7].z ==1){int[] temp = {1, 9, 0};
            ass = temp; }
        }else if(cube[7].faces[2].normal.x == 1) {
          if(cube[7].z==1) {int[] temp = {1, 8, 0}; 
            ass = temp; }
          else if(cube[7].z ==-1){int[] temp = {0, 10, 1}; 
            ass = temp; }
        }
      }
                     
      if(cube[7].y == 1){                            //in the lower slice
        if (cube[7].faces[2].normal.y == 1){           //white face is downward oriented 4 possible permutations 
          if(cube[7].z==-1){int[] temp = {10, 0, 11,1 }; 
            ass = temp; }
          else if(cube[7].z==1){int[] temp = {8, 1, 9, 0}; 
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {4, 0, 0, 5, 1, 1}; 
            ass = temp; }
          //else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {100}; //cube is in the right spot
            //ass = temp; }
        }else if(cube[7].faces[2].normal.y != 1){   //white face is not downward oriented 4 possible permutations
          if(cube[7].z==1){int[] temp = {8, 7}; 
            ass = temp; }
          else if(cube[7].z==-1){int[] temp = {10, 6}; 
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==1)){int[] temp = {5, 0, 10, 1};
            ass = temp; }
          else if((cube[7].z==0)&&(cube[7].x==-1)){int[] temp = {6, 1, 9, 0}; 
            ass = temp; }
        }
      }
   return ass;     
}  
 
//--------------------------------------------------------- 
 
 int[] cubo15() {   
    int[] bss = null;
       if(cube[15].y ==-1){                                       
         if (cube[15].faces[2].normal.y == -1) {                    
           if(cube[15].x == -1){int[] temp = {2, 11, 11}; 
             bss = temp; }
           if(cube[15].x == 1){int[] temp = {3, 11, 11}; 
             bss = temp; }
           if((cube[15].x == 0)&&(cube[15].z == 1)){int[] temp = {3, 3, 11, 11}; 
             bss = temp; }
           if((cube[15].x == 0)&&(cube[15].z == -1)){int[] temp = {11, 11}; 
             bss = temp; }
         }
        else if(cube[15].faces[2].normal.y != -1) {         
           if(cube[15].z==1){int[] temp = {3, 4, 10, 5}; 
             bss = temp; }
           if(cube[15].z==-1){int[] temp = {2, 4, 10, 5}; 
             bss = temp; }
           if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {4, 10, 5}; 
             bss = temp; }
           if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {6, 11, 7}; 
             bss = temp; }
         }
       }
       
       
       if(cube[15].y == 0){                                          
        if(cube[15].faces[2].normal.z == 1){
          if(cube[15].x == -1){int[] temp = {1, 7, 0};
            bss = temp; }
          else if(cube[15].x == 1){int[] temp = {0, 5, 1}; 
            bss = temp; }
        }else if(cube[15].faces[2].normal.z == -1){
          if(cube[15].x == -1){int[] temp = {1, 6, 0}; 
            bss = temp; }
          else if(cube[15].x == 1){int[] temp = {0, 4, 1}; 
            bss = temp; }
        }else if(cube[15].faces[2].normal.x == -1) {
          if(cube[15].z ==-1) {int[] temp = {11}; 
            bss = temp; }
          else if(cube[15].z ==1){int[] temp = {1, 6, 6, 0, 11}; 
            bss = temp; }
        }else if(cube[15].faces[2].normal.x == 1) {
          if(cube[15].z==1) {int[] temp = {0, 5, 5, 1, 10}; 
            bss = temp; }
          else if(cube[15].z ==-1){int[] temp = {10}; 
            bss = temp; }
        }  
      }
                
        
      if(cube[15].y == 1){          
        if (cube[15].faces[2].normal.y == 1){       
          //if(cube[15].z==-1){int[] temp = {100}; 
            //bss = temp; }
          if(cube[15].z==1){int[] temp = {8, 1, 1, 9, 0, 0}; 
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {5, 0, 4, 1}; 
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {6, 1, 7, 0}; 
            bss = temp; }
        }else if(cube[15].faces[2].normal.y != 1){   
          if(cube[15].z==1){int[] temp = {9, 0, 5, 1}; 
            bss = temp; }
          if(cube[15].z==-1){int[] temp = {11, 0, 4, 1}; 
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==1)){int[] temp = {5, 10}; 
            bss = temp; }
          if((cube[15].z==0)&&(cube[15].x==-1)){int[] temp = {7, 11}; 
            bss = temp; }
        }                                                                                                                                         
      }
   return bss;
}

//------------------------------------------------------------

int[] cubo17() {   
    int[] css = null;
       if(cube[17].y ==-1){                             
         if (cube[17].faces[2].normal.y == -1) {                   
           if(cube[17].x == -1){int[] temp = {3, 8, 8};
             css = temp; }
           if(cube[17].x == 1){int[] temp = {2, 8, 8}; 
             css = temp; }
           if((cube[17].x == 0)&&(cube[17].z == 1)){int[] temp = {8, 8};  
             css = temp; }
           if((cube[17].x == 0)&&(cube[17].z == -1)){int[] temp = {3, 3, 8, 8}; 
             css = temp; }
         }
         else if(cube[17].faces[2].normal.y != -1) {         
           if(cube[17].z==1){int[] temp = {3, 5, 8, 4}; 
             css = temp; }
           if(cube[17].z==-1){int[] temp = {2, 5, 8, 4}; 
             css = temp; }
           if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {5, 8, 4}; 
             css = temp; }
           if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {7, 9, 6}; 
             css = temp; }
         }
       }       
       
       if(cube[17].y == 0){                                           
        if(cube[17].faces[2].normal.z == 1){
          if(cube[17].x == -1){int[] temp = {0, 7, 1}; 
            css = temp; }
          else if(cube[17].x == 1){int[] temp = {1, 5, 0}; 
            css = temp; }
        }else if(cube[17].faces[2].normal.z == -1){
          if(cube[17].x == -1){int[] temp = {0, 6, 1}; 
            css = temp; }
          else if(cube[17].x == 1){int[] temp = {1, 4, 0}; 
            css = temp; }
        }else if(cube[17].faces[2].normal.x == -1) {
          if(cube[17].z ==-1) {int[] temp = {0, 6, 6, 1, 9}; 
            css = temp; }
          else if(cube[17].z ==1){int[] temp = {9}; 
            css = temp; }
        }else if(cube[17].faces[2].normal.x == 1) {
          if(cube[17].z==1) {int[] temp = {8}; 
            css = temp; }
          else if(cube[17].z ==-1){int[] temp = {1, 4, 4, 0, 8}; 
            css = temp; }
        }
      }
       
      if(cube[17].y == 1){          
        if (cube[17].faces[2].normal.y == 1){       
          if(cube[17].z==-1){int[] temp = {11, 1, 4, 4, 0, 8}; 
            css = temp; }
          //if(cube[17].z==1){int[] temp = {100}; 
            //css = temp; }
          if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {5, 1, 4, 0}; 
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {7, 0, 6, 1}; 
            css = temp; }
        }else if(cube[17].faces[2].normal.y != 1){   
          if(cube[17].z==1){int[] temp = {9, 1, 5, 0};
            css = temp; }
          if(cube[17].z==-1){int[] temp = {11, 1, 5, 0}; 
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==1)){int[] temp = {4, 8}; 
            css = temp; }
          if((cube[17].z==0)&&(cube[17].x==-1)){int[] temp = {6, 9}; 
            css = temp; }
        }
      }
    return css;
 }
 
//---------------------------------------------------------------------------
 
 int[] cubo25() {   
    int[] dss = null;
       if(cube[25].y ==-1){                                   
         if (cube[25].faces[2].normal.y == -1) {                   
           if(cube[25].x == -1){int[] temp = {3, 3, 5, 5}; 
             dss = temp; }
           if(cube[25].x == 1){int[] temp = {5, 5}; 
             dss = temp; }
           if((cube[25].x == 0)&&(cube[25].z == 1)){int[] temp = {3, 5, 5}; 
             dss = temp; }
           if((cube[25].x == 0)&&(cube[25].z == -1)){int[] temp = {2, 5, 5}; 
             dss = temp; }
         }
         else if(cube[25].faces[2].normal.y != -1) {          
           if(cube[25].z==1){int[] temp = {8, 5, 9}; 
             dss = temp; }
           if(cube[25].z==-1){int[] temp = {10, 4, 11}; 
             dss = temp; }
           if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {2, 8, 5, 9}; 
             dss = temp; }
           if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {3, 8, 5, 9}; 
             dss = temp; }
         }
       }       
       
       if(cube[25].y == 0){                                           
        if(cube[25].faces[2].normal.z == 1){
          if(cube[25].x == -1){int[] temp = {0, 9, 9, 1, 5}; 
            dss = temp; }
          else if(cube[25].x == 1){int[] temp = {5}; 
            dss = temp; }
        }else if(cube[25].faces[2].normal.z == -1){
          if(cube[25].x == -1){int[] temp = {1, 11, 11, 0, 4}; 
            dss = temp; }
          else if(cube[25].x == 1){int[] temp = {4}; 
            dss = temp; }
        }else if(cube[25].faces[2].normal.x == -1) {
          if(cube[25].z ==-1) {int[] temp = {1, 11, 0}; 
            dss = temp; }
          else if(cube[25].z ==1){int[] temp = {0, 9, 1}; 
            dss = temp; }
        }else if(cube[25].faces[2].normal.x == 1) {
          if(cube[25].z==1) {int[] temp = {0, 8, 1}; 
            dss = temp; }
          else if(cube[25].z ==-1){int[] temp = {1, 10, 0}; 
            dss = temp; }
        }
      }              
        
      if(cube[25].y == 1){         
        if (cube[25].faces[2].normal.y == 1){       
          if(cube[25].z==-1){int[] temp = {11, 1, 10, 0}; 
            dss = temp; }
          if(cube[25].z==1){int[] temp = {9, 0, 8, 1}; 
            dss = temp; }
          //if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {100}; 
            //dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {6, 0, 0, 7, 1, 1}; 
            dss = temp; }
        }else if(cube[25].faces[2].normal.y != 1){   
          if(cube[25].z==1){int[] temp = {9, 5}; 
            dss = temp; }
          if(cube[25].z==-1){int[] temp = {11, 4}; 
            dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==1)){int[] temp = {4, 0, 8, 1}; 
            dss = temp; }
          if((cube[25].z==0)&&(cube[25].x==-1)){int[] temp = {6, 0, 9, 1}; 
            dss = temp; }
        } 
      }
   return dss;
  }
}
