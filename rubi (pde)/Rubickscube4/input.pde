

void keyTyped()  {
 cross = new Cross();
 f2l = new F2L();
 oll = new OLL();
 
  if(key =='q') {
    cross.start1();
  }
  if(key =='w'){
    cross.start2();
  }
  if(key =='Q'){
    cross.start3();
  }
  if(key=='W') {
    cross.start4();
  }
  if(key =='a'){
  f2l.startAngoloRV1();
  }
  if(key =='A'){
  f2l.startAngoloRV2();
  }
  if(key =='n'){
  f2l.startAngoloBR1();
  }
  if(key =='N'){
  f2l.startAngoloBR2();
  }
  if(key =='m'){
  f2l.startAngoloAB1();
  }
  if(key =='M'){
  f2l.startAngoloAB2();
  }
  if(key =='s'){
  f2l.startAngoloVA1();
  }
  if(key =='S'){
  f2l.startAngoloVA2();
  }
  if(key =='t'){
  oll.startOLL();
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
    
