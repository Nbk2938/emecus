class PLL{


void startPLL(){
  int[] temp_0 = lastLayerPermutation_0();
  int[] temp_1 = lastLayerPermutation_1();
  int[] temp_2 = lastLayerPermutation_2();
    
    if(temp_0 != null){
     for(int i : temp_0){
        Move q = allMoves[i];
        sequence.add(q);
        q.complete();
     }
    println("cubo completo");
  }
  else  if(temp_1 != null){
   for(int i : temp_1){
      Move q = allMoves[i];
      sequence.add(q);
      q.complete();
   }
   println("cubo completo");
  }
  else  if(temp_2 != null){
   for(int i : temp_2){
      Move q = allMoves[i];
      sequence.add(q);
      q.complete();
   }
   println("cubo completo");
  }
}


//-------------------------------------------------------------------------------

int[] lastLayerPermutation_0(){
  int[] pll = null;
  
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[20].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //99    per 20 e 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {4, 4, 1, 10, 2, 10, 3, 11, 0, 4, 4, 9, 2, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //99'    per 20 e 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 4, 4, 1, 10, 2, 10, 3, 11, 0, 4, 4, 9, 2, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //99''    per 20 e 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 4, 4, 1, 10, 2, 10, 3, 11, 0, 4, 4, 9, 2, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //99'''    per 20 e 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 4, 4, 1, 10, 2, 10, 3, 11, 0, 4, 4, 9, 2, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //99    per 1 e 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {8, 8, 1, 5, 2, 5, 3, 4, 0, 8, 8, 6, 2, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //99'    per 1 e 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 8, 8, 1, 5, 2, 5, 3, 4, 0, 8, 8, 6, 2, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //99''    per 1 e 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 8, 8, 1, 5, 2, 5, 3, 4, 0, 8, 8, 6, 2, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&  (cube[2].z==1)){
  if((cube[1].x==0)&&  (cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&& (cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //99'''    per 1 e 2 con orientamento corretto
  if((cube[0].x==1)&&  (cube[0].z==-1)){
  if((cube[9].x==0)&&  (cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 8, 8, 1, 5, 2, 5, 3, 4, 0, 8, 8, 6, 2, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //99    per 0 e 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = { 7, 7, 1, 9, 2, 9, 3, 8, 0, 7, 7, 10, 2, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //99'    per 0 e 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 7, 7, 1, 9, 2, 9, 3, 8, 0, 7, 7, 10, 2, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //99''    per 0 e 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 7, 7, 1, 9, 2, 9, 3, 8, 0, 7, 7, 10, 2, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //99'''    per 0 e 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 7, 7, 1, 9, 2, 9, 3, 8, 0, 7, 7, 10, 2, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //99    per 18 e 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {11, 11, 1, 6, 2, 6, 3, 7, 0, 11, 11, 5, 2, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //99'    per 18 e 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 11, 11, 1, 6, 2, 6, 3, 7, 0, 11, 11, 5, 2, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //99''    per 18 e 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 11, 11, 1, 6, 2, 6, 3, 7, 0, 11, 11, 5, 2, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //99'''    per 18 e 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 11, 11, 1, 6, 2, 6, 3, 7, 0, 11, 11, 5, 2, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //100    per 20 e 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {9, 3, 8, 4, 4, 1, 10, 2, 11, 3, 11, 0, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //100'    per 20 e 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 9, 3, 8, 4, 4, 1, 10, 2, 11, 3, 11, 0, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //100''    per 20 e 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 9, 3, 8, 4, 4, 1, 10, 2, 11, 3, 11, 0, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //100'''    per 20 e 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 9, 3, 8, 4, 4, 1, 10, 2, 11, 3, 11, 0, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //100    per 1 e 2 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {6, 3, 7, 8, 8, 1, 5, 2, 4, 3, 4, 0, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //100'    per 1 e 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 6, 3, 7, 8, 8, 1, 5, 2, 4, 3, 4, 0, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //100''    per 1 e 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 6, 3, 7, 8, 8, 1, 5, 2, 4, 3, 4, 0, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //100'''    per 1 e 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 6, 3, 7, 8, 8, 1, 5, 2, 4, 3, 4, 0, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //100    per 0 e 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {10, 3, 11, 7, 7, 1, 9, 2, 8, 3, 8, 0, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //100'    per 0 e 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 10, 3, 11, 7, 7, 1, 9, 2, 8, 3, 8, 0, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //100''    per 0 e 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 10, 3, 11, 7, 7, 1, 9, 2, 8, 3, 8, 0, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //100'''    per 0 e 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 10, 3, 11, 7, 7, 1, 9, 2, 8, 3, 8, 0, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //100    per 18 e 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {5, 3, 4, 11, 11, 1, 6, 2, 7, 3, 7, 0, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //100'    per 18 e 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 5, 3, 4, 11, 11, 1, 6, 2, 7, 3, 7, 0, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //100''    per 18 e 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 5, 3, 4, 11, 11, 1, 6, 2, 7, 3, 7, 0, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //100'''    per 18 e 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 5, 3, 4, 11, 11, 1, 6, 2, 7, 3, 7, 0, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //101    per 20 e 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {8, 8, 0, 7, 3, 7, 2, 6, 1, 8, 8, 4, 3, 5};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //101'    per 20 e 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 8, 8, 0, 7, 3, 7, 2, 6, 1, 8, 8, 4, 3, 5};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //101''    per 20 e 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 8, 8, 0, 7, 3, 7, 2, 6, 1, 8, 8, 4, 3, 5};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //101'''    per 20 e 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 8, 8, 0, 7, 3, 7, 2, 6, 1, 8, 8, 4, 3, 5};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //101    per 2 e 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {7, 7, 0, 11, 3, 11, 2, 10, 1, 7, 7, 8, 3, 9};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //101'    per 2 e 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 7, 7, 0, 11, 3, 11, 2, 10, 1, 7, 7, 8, 3, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //101''    per 2 e 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 7, 7, 0, 11, 3, 11, 2, 10, 1, 7, 7, 8, 3, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //101'''    per 2 e 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 7, 7, 0, 11, 3, 11, 2, 10, 1, 7, 7, 8, 3, 9};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //101    per 0 e 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {11, 11, 0, 4, 3, 4, 2, 5, 1, 11, 11, 7, 3, 6};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //101'    per 0 e 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 11, 11, 0, 4, 3, 4, 2, 5, 1, 11, 11, 7, 3, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //101''    per 0 e 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 11, 11, 0, 4, 3, 4, 2, 5, 1, 11, 11, 7, 3, 6};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //101'''    per 0 e 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 11, 11, 0, 4, 3, 4, 2, 5, 1, 11, 11, 7, 3, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //101    per 18 e 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {4, 4, 0, 8, 3, 8, 2, 9, 1, 4, 4, 11, 3, 10};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //101'    per 18 e 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 4, 4, 0, 8, 3, 8, 2, 9, 1, 4, 4, 11, 3, 10};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //101''    per 18 e 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 4, 4, 0, 8, 3, 8, 2, 9, 1, 4, 4, 11, 3, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //101'''    per 18 e 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 4, 4, 0, 8, 3, 8, 2, 9, 1, 4, 4, 11, 3, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //102    per 20 e 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {4, 2, 5, 8, 8, 0, 7, 3, 6, 2, 6, 1, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //102'    per 20 e 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 4, 2, 5, 8, 8, 0, 7, 3, 6, 2, 6, 1, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //102''    per 20 e 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 4, 2, 5, 8, 8, 0, 7, 3, 6, 2, 6, 1, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //102    per 2 e 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {8, 2, 9, 7, 7, 0, 11, 3, 10, 2, 10, 1, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //102'    per 2 e 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 8, 2, 9, 7, 7, 0, 11, 3, 10, 2, 10, 1, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //102''    per 2 e 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 8, 2, 9, 7, 7, 0, 11, 3, 10, 2, 10, 1, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //102'''    per 2 e 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 8, 2, 9, 7, 7, 0, 11, 3, 10, 2, 10, 1, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //102    per 0 e 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {7, 2, 6, 11, 11, 0, 4, 3, 5, 2, 5, 1, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //102'    per 0 e 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 7, 2, 6, 11, 11, 0, 4, 3, 5, 2, 5, 1, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //102''    per 0 e 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 7, 2, 6, 11, 11, 0, 4, 3, 5, 2, 5, 1, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //102'''    per 0 e 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 7, 2, 6, 11, 11, 0, 4, 3, 5, 2, 5, 1, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //102    per 9 e 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = { 11, 2, 10, 4, 4, 0, 8, 3, 9, 2, 9, 1, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //102'    per 9 e 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 11, 2, 10, 4, 4, 0, 8, 3, 9, 2, 9, 1, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //102''    per 9 e 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 11, 2, 10, 4, 4, 0, 8, 3, 9, 2, 9, 1, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //102'''    per 9 e 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 11, 2, 10, 4, 4, 0, 8, 3, 9, 2, 9, 1, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //103    per 2, 11, 0, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3, 4, 2, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //103'    per 2, 11, 0, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3, 4, 2, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //103''    per 2, 11, 0, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3, 4, 2, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //103'''    per 2, 11, 0, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3, 4, 2, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //103    per 0, 1, 18, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3, 8, 2, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //103'    per 0, 1, 18, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3, 8, 2, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //103''    per 0, 1, 18, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3, 8, 2, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //103'''    per 0, 1, 18, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3, 8, 2, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //103    per 20, 11, 9, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3, 7, 2, 6, 10};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //103'    per 20, 11, 9, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3, 7, 2, 6, 10};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //103''    per 20, 11, 9, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3, 7, 2, 6, 10};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //103'''    per 20, 11, 9, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3, 7, 2, 6, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //103    per 20, 19, 2, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3, 11, 2, 10, 5};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //103'    per 20, 19, 2, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3, 11, 2, 10, 5};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //103''    per 20, 19, 2, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3, 11, 2, 10, 5};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //103'''    per 20, 19, 2, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3, 11, 2, 10, 5};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //104    per 2, 11, 20, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {6, 2, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 3, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //104'    per 2, 11, 20, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 6, 2, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 3, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //104''    per 2, 11, 20, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 6, 2, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 3, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //104'''    per 2, 11, 20, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 6, 2, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 3, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //104    per 0, 1, 2, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {10, 2, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 3, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //104'    per 0, 1, 2, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 10, 2, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 3, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //104''    per 0, 1, 2, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 10, 2, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 3, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //104'''    per 0, 1, 2, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 10, 2, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 3, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //104   per 0, 9, 18, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {5, 2, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 3, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //104'   per 0, 9, 18, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 5, 2, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 3, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //104''   per 0, 9, 18, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 5, 2, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 3, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //104'''   per 0, 9, 18, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 5, 2, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 3, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //104   per 18, 19, 20, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {9, 2, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 3, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //104'   per 18, 19, 20, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 9, 2, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 3, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //104''   per 18, 19, 20, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 9, 2, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 3, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //104'''   per 18, 19, 20, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 9, 2, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 3, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //105  per 2, 11, 20, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {5, 2, 6, 2, 2, 4, 3, 5, 2, 2, 7, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //105'  per 2, 11, 20, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 5, 2, 6, 2, 2, 4, 3, 5, 2, 2, 7, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //105''  per 2, 11, 20, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 5, 2, 6, 2, 2, 4, 3, 5, 2, 2, 7, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //105'''  per 2, 11, 20, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 5, 2, 6, 2, 2, 4, 3, 5, 2, 2, 7, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //105  per 0, 1, 2, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {9, 2, 10, 2, 2, 8, 3, 9, 2, 2, 11, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //105'  per 0, 1, 2, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 9, 2, 10, 2, 2, 8, 3, 9, 2, 2, 11, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //105''  per 0, 1, 2, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 9, 2, 10, 2, 2, 8, 3, 9, 2, 2, 11, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //105'''  per 0, 1, 2, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 9, 2, 10, 2, 2, 8, 3, 9, 2, 2, 11, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //105  per 0, 9, 18, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {6, 2, 5, 2, 2, 7, 3, 6, 2, 2, 4, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //105'  per 0, 9, 18, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 6, 2, 5, 2, 2, 7, 3, 6, 2, 2, 4, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //105''  per 0, 9, 18, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 6, 2, 5, 2, 2, 7, 3, 6, 2, 2, 4, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //105'''  per 0, 9, 18, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 6, 2, 5, 2, 2, 7, 3, 6, 2, 2, 4, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //105  per 18, 19, 20, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = { 10, 2, 9, 2, 2, 11, 3, 10, 2, 2, 8, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //105'  per 18, 19, 20, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 10, 2, 9, 2, 2, 11, 3, 10, 2, 2, 8, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //105''  per 18, 19, 20, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 10, 2, 9, 2, 2, 11, 3, 10, 2, 2, 8, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //105'''  per 18, 19, 20, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 10, 2, 9, 2, 2, 11, 3, 10, 2, 2, 8, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //106  per 0, 1, 2, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //106'  per 0, 1, 2, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //106''  per 0, 1, 2, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //106'''  per 0, 1, 2, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 4, 3, 5, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //106  per 0, 9, 18, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //106'  per 0, 9, 18, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //106''  per 0, 9, 18, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //106'''  per 0, 9, 18, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 8, 3, 9, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //106  per 18, 19, 20, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //106'  per 18, 19, 20, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //106''  per 18, 19, 20, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //106'''  per 18, 19, 20, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 7, 3, 6, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //106  per 2, 11, 20, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //106'  per 2, 11, 20, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //106''  per 2, 11, 20, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //106'''  per 2, 11, 20, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 11, 3, 10, 3};
      pll = temp;
  }}}}}}}}

  return pll;
}

int[] lastLayerPermutation_1(){
  int[] pll = null;
  
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //107  per 2, 20, 19, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {7, 3, 3, 6, 3, 3, 7, 9, 6, 3, 7, 2, 7, 8, 6, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //107'  per 2, 20, 19, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 7, 3, 3, 6, 3, 3, 7, 9, 6, 3, 7, 2, 7, 8, 6, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //107''  per 2, 20, 19, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 3, 3, 6, 3, 3, 7, 9, 6, 3, 7, 2, 7, 8, 6, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //107'''  per 2, 20, 19, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 7, 3, 3, 6, 3, 3, 7, 9, 6, 3, 7, 2, 7, 8, 6, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //107  per 0, 2, 11, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {11, 3, 3, 10, 3, 3, 11, 6, 10, 3, 11, 2, 11, 7, 10, 10, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //107'  per 0, 2, 11, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 3, 3, 10, 3, 3, 11, 6, 10, 3, 11, 2, 11, 7, 10, 10, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //107''  per 0, 2, 11, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 11, 3, 3, 10, 3, 3, 11, 6, 10, 3, 11, 2, 11, 7, 10, 10, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //107'''  per 0, 2, 11, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 11, 3, 3, 10, 3, 3, 11, 6, 10, 3, 11, 2, 11, 7, 10, 10, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //107  per 18, 0, 1, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 3, 3, 5, 3, 3, 4, 10, 5, 3, 4, 2, 4, 11, 5, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //107'  per 18, 0, 1, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 4, 3, 3, 5, 3, 3, 4, 10, 5, 3, 4, 2, 4, 11, 5, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //107''  per 18, 0, 1, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 4, 3, 3, 5, 3, 3, 4, 10, 5, 3, 4, 2, 4, 11, 5, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //107'''  per 18, 0, 1, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 4, 3, 3, 5, 3, 3, 4, 10, 5, 3, 4, 2, 4, 11, 5, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //107  per 20, 18, 9, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {8, 3, 3, 9, 3, 3, 8, 5, 9, 3, 8, 2, 8, 4, 9, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //107'  per 20, 18, 9, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 8, 3, 3, 9, 3, 3, 8, 5, 9, 3, 8, 2, 8, 4, 9, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //107''  per 20, 18, 9, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 8, 3, 3, 9, 3, 3, 8, 5, 9, 3, 8, 2, 8, 4, 9, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //107'''  per 20, 18, 9, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 3, 3, 9, 3, 3, 8, 5, 9, 3, 8, 2, 8, 4, 9, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //108  per 1, 2, 20, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {5, 2, 2, 4, 2, 2, 5, 8, 4, 2, 5, 3, 5, 9, 4, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //108'  per 1, 2, 20, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 5, 2, 2, 4, 2, 2, 5, 8, 4, 2, 5, 3, 5, 9, 4, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //108''  per 1, 2, 20, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 5, 2, 2, 4, 2, 2, 5, 8, 4, 2, 5, 3, 5, 9, 4, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //108'''  per 1, 2, 20, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 5, 2, 2, 4, 2, 2, 5, 8, 4, 2, 5, 3, 5, 9, 4, 4, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //108  per 9, 0, 2, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {9, 2, 2, 8, 2, 2, 9, 7, 8, 2, 9, 3, 9, 6, 8, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //108'  per 9, 0, 2, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 9, 2, 2, 8, 2, 2, 9, 7, 8, 2, 9, 3, 9, 6, 8, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //108''  per 9, 0, 2, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 9, 2, 2, 8, 2, 2, 9, 7, 8, 2, 9, 3, 9, 6, 8, 8, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //108  per 19, 18, 0, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {6, 2, 2, 7, 2, 2, 6, 11, 7, 2, 6, 3, 6, 10, 7, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //108'  per 19, 18, 0, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 6, 2, 2, 7, 2, 2, 6, 11, 7, 2, 6, 3, 6, 10, 7, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //108''  per 19, 18, 0, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 6, 2, 2, 7, 2, 2, 6, 11, 7, 2, 6, 3, 6, 10, 7, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //108'''  per 19, 18, 0, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 6, 2, 2, 7, 2, 2, 6, 11, 7, 2, 6, 3, 6, 10, 7, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //108  per 11, 20, 18, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {10, 2, 2, 11, 2, 2, 10, 4, 11, 2, 10, 3, 10, 5, 11, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //108'  per 11, 20, 18, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 10, 2, 2, 11, 2, 2, 10, 4, 11, 2, 10, 3, 10, 5, 11, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //108''  per 11, 20, 18, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 10, 2, 2, 11, 2, 2, 10, 4, 11, 2, 10, 3, 10, 5, 11, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //108'''  per 11, 20, 18, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 10, 2, 2, 11, 2, 2, 10, 4, 11, 2, 10, 3, 10, 5, 11, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //109  per 1, 2, 11, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {5, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //109'  per 1, 2, 11, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 5, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //109''  per 1, 2, 11, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 5, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //109'''  per 1, 2, 11, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 5, 2, 5, 3, 10, 5, 11, 11, 3, 10, 2, 10, 4, 11, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //109 per 9, 0, 1, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {9, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //109' per 9, 0, 1, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 9, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //109'' per 9, 0, 1, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 9, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //109''' per 9, 0, 1, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 9, 2, 9, 3, 5, 9, 4, 4, 3, 5, 2, 5, 8, 4, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //109 per 19, 18, 9, 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {6, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //109' per 19, 18, 9, 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 6, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //109'' per 19, 18, 9, 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 6, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //109''' per 19, 18, 9, 2 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 6, 2, 6, 3, 9, 6, 8, 8, 3, 9, 2, 9, 7, 8, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //109 per 11, 20, 19, 0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {10, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //109' per 11, 20, 19, 0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 10, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //109'' per 11, 20, 19, 0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 10, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //109''' per 11, 20, 19, 0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 10, 2, 10, 3, 6, 10, 7, 7, 3, 6, 2, 6, 11, 7, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //110 per 2, 11, 19, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {8, 4, 3, 5, 3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 9};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //110' per 2, 11, 19, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 8, 4, 3, 5, 3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //110'' per 2, 11, 19, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 8, 4, 3, 5, 3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //110''' per 2, 11, 19, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 4, 3, 5, 3, 4, 2, 5, 9, 4, 2, 5, 3, 5, 8, 4, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //110 per 0, 1, 11, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {7, 8, 3, 9, 3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 6};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //110' per 0, 1, 11, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 7, 8, 3, 9, 3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //110'' per 0, 1, 11, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 8, 3, 9, 3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 6};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //110''' per 0, 1, 11, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 7, 8, 3, 9, 3, 8, 2, 9, 6, 8, 2, 9, 3, 9, 7, 8, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //110 per 18, 9, 1, 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {11, 7, 3, 6, 3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 10};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //110' per 18, 9, 1, 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 7, 3, 6, 3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //110'' per 18, 9, 1, 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 11, 7, 3, 6, 3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 10};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //110''' per 18, 9, 1, 2 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 11, 7, 3, 6, 3, 7, 2, 6, 10, 7, 2, 6, 3, 6, 11, 7, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //110 per 20, 19, 9, 0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 11, 3, 10, 3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 5};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //110' per 20, 19, 9, 0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 4, 11, 3, 10, 3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 5};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //110'' per 20, 19, 9, 0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 4, 11, 3, 10, 3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 5};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //110''' per 20, 19, 9, 0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 4, 11, 3, 10, 3, 11, 2, 10, 5, 11, 2, 10, 3, 10, 4, 11, 5};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //111 per 1, 2, 18, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {7, 3, 4, 2, 2, 6, 2, 5, 7, 3, 4, 2, 2, 6, 2, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //111' per 1, 2, 18, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 7, 3, 4, 2, 2, 6, 2, 5, 7, 3, 4, 2, 2, 6, 2, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //111'' per 1, 2, 18, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 7, 3, 4, 2, 2, 6, 2, 5, 7, 3, 4, 2, 2, 6, 2, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //111''' per 1, 2, 18, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 7, 3, 4, 2, 2, 6, 2, 5, 7, 3, 4, 2, 2, 6, 2, 5, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //111 per 0, 9, 11, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {11, 3, 8, 2, 2, 10, 2, 9, 11, 3, 8, 2, 2, 10, 2, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //111' per 0, 9, 11, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 11, 3, 8, 2, 2, 10, 2, 9, 11, 3, 8, 2, 2, 10, 2, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //111'' per 0, 9, 11, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 11, 3, 8, 2, 2, 10, 2, 9, 11, 3, 8, 2, 2, 10, 2, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //111''' per 0, 9, 11, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 11, 3, 8, 2, 2, 10, 2, 9, 11, 3, 8, 2, 2, 10, 2, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //112 per 0, 1, 19, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {5, 2, 6, 2, 2, 4, 3, 7, 5, 2, 6, 2, 2, 4, 3, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //112' per 0, 1, 19, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 5, 2, 6, 2, 2, 4, 3, 7, 5, 2, 6, 2, 2, 4, 3, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //112'' per 0, 1, 19, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 5, 2, 6, 2, 2, 4, 3, 7, 5, 2, 6, 2, 2, 4, 3, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //112''' per 0, 1, 19, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 5, 2, 6, 2, 2, 4, 3, 7, 5, 2, 6, 2, 2, 4, 3, 7, 3};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //112 per 2, 11, 9, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {9, 2, 10, 2, 2, 8, 3, 11, 9, 2, 10, 2, 2, 8, 3, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //112' per 2, 11, 9, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 9, 2, 10, 2, 2, 8, 3, 11, 9, 2, 10, 2, 2, 8, 3, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //112'' per 2, 11, 9, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 9, 2, 10, 2, 2, 8, 3, 11, 9, 2, 10, 2, 2, 8, 3, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //112''' per 2, 11, 9, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 9, 2, 10, 2, 2, 8, 3, 11, 9, 2, 10, 2, 2, 8, 3, 11, 3};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //114 per 0, 9, 18, 2, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 4, 2, 4, 2, 5, 3, 5, 3, 5, 2, 5};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //114' per 0, 9, 18, 2, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 4, 4, 2, 4, 2, 5, 3, 5, 3, 5, 2, 5};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //114'' per 0, 9, 18, 2, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 4, 4, 2, 4, 2, 5, 3, 5, 3, 5, 2, 5};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //114''' per 0, 9, 18, 2, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 4, 4, 2, 4, 2, 5, 3, 5, 3, 5, 2, 5};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //114 per 0, 2, 20, 19, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {8, 8, 2, 8, 2, 9, 3, 9, 3, 9, 2, 9};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //114' per 0, 2, 20, 19, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 8, 8, 2, 8, 2, 9, 3, 9, 3, 9, 2, 9};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //114'' per 0, 2, 20, 19, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 8, 8, 2, 8, 2, 9, 3, 9, 3, 9, 2, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //114''' per 0, 2, 20, 19, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 8, 2, 8, 2, 9, 3, 9, 3, 9, 2, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //114 per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {7, 7, 2, 7, 2, 6, 3, 6, 3, 6, 2, 6};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //114' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 7, 7, 2, 7, 2, 6, 3, 6, 3, 6, 2, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //114'' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 7, 2, 7, 2, 6, 3, 6, 3, 6, 2, 6};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //114''' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 7, 7, 2, 7, 2, 6, 3, 6, 3, 6, 2, 6};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //114 per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {11, 11, 2, 11, 2, 10, 3, 10, 3, 10, 2, 10};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //114' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 11, 2, 11, 2, 10, 3, 10, 3, 10, 2, 10};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //114'' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 11, 11, 2, 11, 2, 10, 3, 10, 3, 10, 2, 10};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //114''' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 11, 11, 2, 11, 2, 10, 3, 10, 3, 10, 2, 10};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //113 per 2, 20, 0, 9, 18 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 3, 4, 2, 4, 2, 4, 3, 5, 3, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //113' per 2, 20, 0, 9, 18 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 4, 3, 4, 2, 4, 2, 4, 3, 5, 3, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //113'' per 2, 20, 0, 9, 18 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 4, 3, 4, 2, 4, 2, 4, 3, 5, 3, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //113''' per 2, 20, 0, 9, 18 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 4, 3, 4, 2, 4, 2, 4, 3, 5, 3, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //113 per 0, 2, 18, 19, 20 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {8, 3, 8, 2, 8, 2, 8, 3, 9, 3, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //113' per 0, 2, 18, 19, 20 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 8, 3, 8, 2, 8, 2, 8, 3, 9, 3, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //113'' per 0, 2, 18, 19, 20 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 8, 3, 8, 2, 8, 2, 8, 3, 9, 3, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //113''' per 0, 2, 18, 19, 20 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 3, 8, 2, 8, 2, 8, 3, 9, 3, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //113 per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {7, 3, 7, 2, 7, 2, 7, 3, 6, 3, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //113' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 7, 3, 7, 2, 7, 2, 7, 3, 6, 3, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //113'' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 3, 7, 2, 7, 2, 7, 3, 6, 3, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //113''' per 18, 0, 20, 11, 2 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 7, 3, 7, 2, 7, 2, 7, 3, 6, 3, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //113 per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {11, 3, 11, 2, 11, 2, 11, 3, 10, 3, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //113' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 3, 11, 2, 11, 2, 11, 3, 10, 3, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //113'' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 11, 3, 11, 2, 11, 2, 11, 3, 10, 3, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //113''' per 20, 18, 2, 1, 0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 11, 3, 11, 2, 11, 2, 11, 3, 10, 3, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //115 per 2, 20, 18,  0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 9, 3, 8, 3, 8, 2, 8, 3, 9, 2, 8, 2, 8, 8, 3, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //115' per 2, 20, 18,  0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {9, 3, 8, 3, 8, 2, 8, 3, 9, 2, 8, 2, 8, 8, 3, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //115'' per 2, 20, 18,  0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 9, 3, 8, 3, 8, 2, 8, 3, 9, 2, 8, 2, 8, 8, 3, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //115''' per 2, 20, 18,  0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 9, 3, 8, 3, 8, 2, 8, 3, 9, 2, 8, 2, 8, 8, 3, 9, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //115 per 2, 20, 18,  0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 6, 3, 7, 3, 7, 2, 7, 3, 6, 2, 7, 2, 7, 7, 3, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //115' per 2, 20, 18,  0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {6, 3, 7, 3, 7, 2, 7, 3, 6, 2, 7, 2, 7, 7, 3, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //115'' per 2, 20, 18,  0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 6, 3, 7, 3, 7, 2, 7, 3, 6, 2, 7, 2, 7, 7, 3, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //115''' per 2, 20, 18,  0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 6, 3, 7, 3, 7, 2, 7, 3, 6, 2, 7, 2, 7, 7, 3, 6, 2};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //116 per 2, 20, 18,  0 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {5, 5, 7, 7, 1, 5, 5, 7, 7, 2, 2, 5, 5, 7, 7, 1, 5, 5, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //116' per 2, 20, 18,  0 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 5, 5, 7, 7, 1, 5, 5, 7, 7, 2, 2, 5, 5, 7, 7, 1, 5, 5, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //116'' per 2, 20, 18,  0 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 5, 5, 7, 7, 1, 5, 5, 7, 7, 2, 2, 5, 5, 7, 7, 1, 5, 5, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //116''' per 2, 20, 18,  0 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 5, 5, 7, 7, 1, 5, 5, 7, 7, 2, 2, 5, 5, 7, 7, 1, 5, 5, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //117 per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {5, 8, 5, 11, 11, 4, 9, 5, 11, 11, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //117' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 5, 8, 5, 11, 11, 4, 9, 5, 11, 11, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //117'' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 5, 8, 5, 11, 11, 4, 9, 5, 11, 11, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //117''' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 5, 8, 5, 11, 11, 4, 9, 5, 11, 11, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //117 per 9, 0, 1, 11, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {9, 7, 9, 4, 4, 8, 6, 9, 4, 4, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //117' per 9, 0, 1, 11, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 9, 7, 9, 4, 4, 8, 6, 9, 4, 4, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //117'' per 9, 0, 1, 11, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 9, 7, 9, 4, 4, 8, 6, 9, 4, 4, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //117''' per 9, 0, 1, 11, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 9, 7, 9, 4, 4, 8, 6, 9, 4, 4, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //117 per 19, 18, 9, 1, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {6, 11, 6, 8, 8, 7, 10, 6, 8, 8, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //117' per 19, 18, 9, 1, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 6, 11, 6, 8, 8, 7, 10, 6, 8, 8, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //117'' per 19, 18, 9, 1, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 6, 11, 6, 8, 8, 7, 10, 6, 8, 8, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //117''' per 19, 18, 9, 1, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 6, 11, 6, 8, 8, 7, 10, 6, 8, 8, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //117 per 11, 20, 19, 1, 9 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {10, 4, 10, 7, 7, 11, 5, 10, 7, 7, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //117' per 11, 20, 19, 1, 9 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 10, 4, 10, 7, 7, 11, 5, 10, 7, 7, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //117'' per 11, 20, 19, 1, 9 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 10, 4, 10, 7, 7, 11, 5, 10, 7, 7, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //117''' per 11, 20, 19, 1, 9 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 10, 4, 10, 7, 7, 11, 5, 10, 7, 7, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //118 per 9, 0, 1, 19, 11 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {4, 10, 4, 8, 8, 5, 11, 4, 8, 8, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //118' per 9, 0, 1, 19, 11 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 4, 10, 4, 8, 8, 5, 11, 4, 8, 8, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //118'' per 9, 0, 1, 19, 11 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 4, 10, 4, 8, 8, 5, 11, 4, 8, 8, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //118''' per 9, 0, 1, 19, 11 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {2, 4, 10, 4, 8, 8, 5, 11, 4, 8, 8, 4, 4};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //118 per 19, 18, 9, 11, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {8, 5, 8, 7, 7, 9, 4, 8, 7, 7, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //118' per 19, 18, 9, 11, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 8, 5, 8, 7, 7, 9, 4, 8, 7, 7, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //118'' per 19, 18, 9, 11, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 3, 8, 5, 8, 7, 7, 9, 4, 8, 7, 7, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //118''' per 19, 18, 9, 11, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {2, 8, 5, 8, 7, 7, 9, 4, 8, 7, 7, 8, 8};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //118 per 11, 20, 19, 9, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {7, 9, 7, 11, 11, 6, 8, 7, 11, 11, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //118' per 11, 20, 19, 9, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 7, 9, 7, 11, 11, 6, 8, 7, 11, 11, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //118'' per 11, 20, 19, 9, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 3, 7, 9, 7, 11, 11, 6, 8, 7, 11, 11, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //118''' per 11, 20, 19, 9, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 7, 9, 7, 11, 11, 6, 8, 7, 11, 11, 7, 7};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //118 per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {11, 6, 11, 4, 4, 10, 7, 11, 4, 4, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //118' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 11, 6, 11, 4, 4, 10, 7, 11, 4, 4, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //118'' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 11, 6, 11, 4, 4, 10, 7, 11, 4, 4, 11, 11};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //118''' per 1, 2, 11, 9, 19 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 11, 6, 11, 4, 4, 10, 7, 11, 4, 4, 11, 11};
      pll = temp;
  }}}}}}}}  
  return pll;
}

int[] lastLayerPermutation_2(){
  int[] pll = null;
  
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //119 per 9, 19, 11, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {4, 10, 5, 8, 4, 11, 5, 9, 4, 11, 5, 8, 4, 10, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //119' per 9, 19, 11, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {3, 4, 10, 5, 8, 4, 11, 5, 9, 4, 11, 5, 8, 4, 10, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //119'' per 9, 19, 11, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {3, 3, 4, 10, 5, 8, 4, 11, 5, 9, 4, 11, 5, 8, 4, 10, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //119''' per 9, 19, 11, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {2, 4, 10, 5, 8, 4, 11, 5, 9, 4, 11, 5, 8, 4, 10, 5, 9};
      pll = temp;
  }}}}}}}}
  if((cube[2].x==1)&&(cube[2].z==1)){
  if((cube[11].x==0)&&(cube[11].z==1)){
  if((cube[20].x==-1)&&(cube[20].z==1)){
  if((cube[19].x==1)&&(cube[19].z==0)){
  if((cube[1].x==-1)&&(cube[1].z==0)){  //119 per 9, 19, 11, 1 con orientamento corretto
  if((cube[0].x==1)&&(cube[0].z==-1)){
  if((cube[9].x==0)&&(cube[9].z==-1)){
  if((cube[18].x==-1)&&(cube[18].z==-1)){
      int[] temp = {8, 5, 9, 7, 8, 4, 9, 6, 8, 4, 9, 7, 8, 5, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[0].x==1)&&(cube[0].z==1)){
  if((cube[19].x==0)&&(cube[19].z==1)){
  if((cube[2].x==-1)&&(cube[2].z==1)){
  if((cube[9].x==1)&&(cube[9].z==0)){
  if((cube[11].x==-1)&&(cube[11].z==0)){  //119' per 9, 19, 11, 1 con orientamento corretto
  if((cube[18].x==1)&&(cube[18].z==-1)){
  if((cube[1].x==0)&&(cube[1].z==-1)){
  if((cube[20].x==-1)&&(cube[20].z==-1)){
      int[] temp = {3, 8, 5, 9, 7, 8, 4, 9, 6, 8, 4, 9, 7, 8, 5, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[18].x==1)&&(cube[18].z==1)){
  if((cube[9].x==0)&&(cube[9].z==1)){
  if((cube[0].x==-1)&&(cube[0].z==1)){
  if((cube[1].x==1)&&(cube[1].z==0)){
  if((cube[19].x==-1)&&(cube[19].z==0)){  //119'' per 9, 19, 11, 1 con orientamento corretto
  if((cube[20].x==1)&&(cube[20].z==-1)){
  if((cube[11].x==0)&&(cube[11].z==-1)){
  if((cube[2].x==-1)&&(cube[2].z==-1)){
      int[] temp = {3, 3, 8, 5, 9, 7, 8, 4, 9, 6, 8, 4, 9, 7, 8, 5, 9, 6};
      pll = temp;
  }}}}}}}}
  if((cube[20].x==1)&&(cube[20].z==1)){
  if((cube[1].x==0)&&(cube[1].z==1)){
  if((cube[18].x==-1)&&(cube[18].z==1)){
  if((cube[11].x==1)&&(cube[11].z==0)){
  if((cube[9].x==-1)&&(cube[9].z==0)){  //119''' per 9, 19, 11, 1 con orientamento corretto
  if((cube[2].x==1)&&(cube[2].z==-1)){
  if((cube[19].x==0)&&(cube[19].z==-1)){
  if((cube[0].x==-1)&&(cube[0].z==-1)){
      int[] temp = {2, 8, 5, 9, 7, 8, 4, 9, 6, 8, 4, 9, 7, 8, 5, 9, 6};
      pll = temp;
  }}}}}}}}
  

  return pll;
}


}
