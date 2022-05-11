


/*  String getWhiteFaceColors(){
    String out = "";
    
    int[] x = {-1, 0, 1, -1, 0, 1, -1, 0, 1};
    int[] z = {1, 1, 1, 0, 0, 0, -1, -1, -1};
    
    for(int ii = 0; ii < 9; ii++){
      for(int i = 0; i < 27; i++){
        if(cube[i].y == 1 && cube[i].x == x[ii] && cube[i].z == z[ii]){
          
          for(int j = 0; j<6; j++){
            if(cube[i].faces[j].normal.y == 1){
              String space = ((ii +1) % 3 == 0) ? "\n" : " ";
              out += j + space;
            }
          }
          break;
        }
      }
    }
    
    
    
    return out;
  }  */

void keyTyped()  {

 
/*  if(key == 'p'){
    println(getWhiteFaceColors());
  } */
 
  if(key =='q') {
    
    cross = new Cross();
    f2l = new F2L();
    oll = new OLL();
    pll = new PLL();
 
    cross.start1();
    sleep();
    cross.start2();
    sleep();
    cross.start3();
    sleep();
    cross.start4();
    sleep();
    f2l.startAngoloRV1();
    sleep();
    f2l.startAngoloRV2();
    sleep();
    f2l.startAngoloBR1();
    sleep();
    f2l.startAngoloBR2();
    sleep();
    f2l.startAngoloAB1();
    sleep();
    f2l.startAngoloAB2();
    sleep();
    f2l.startAngoloVA1();
    sleep();
    f2l.startAngoloVA2();
    sleep();
    oll.startOLL();
    sleep();
    pll.startPLL();
    sleep();
    println(sequence);
  }

//  if(key=='a') {
//    if((cube[7].faces[2].normal.y == 1)&&(cube[15].faces[2].normal.y == 1)&&(cube[17].faces[2].normal.y == 1)&&(cube[25].faces[2].normal.y == 1)) {
//       if((cube[7].x== -1 )&&(cube[7].y== 1 )&&(cube[7].z == 0 )) {
//         if((cube[15].x== 0 )&&(cube[15].y== 1 )&&(cube[15].z == -1 )){
//           if((cube[17].x== 0 )&&(cube[17].y== 1 )&&(cube[17].z == 1 )) {
//             if((cube[25].x== 1 )&&(cube[25].y== 1 )&&(cube[25].z == 0 )) {
//                println("croce giusta");
//             }
//           }
//         }
//       }
//     }
//   }
}
    
