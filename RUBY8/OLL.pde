class OLL{

void startOLL(){
  int[] temp_0 = lastLayerOrientation_0();
  int[] temp_1 = lastLayerOrientation_1();
  int[] temp_2 = lastLayerOrientation_2();
  
  if(temp_0 != null){
    concatenateSolution(temp_0);
     for(int i : temp_0){
        Move q = allMoves[i];
        //sequenceSolve.add(q);
        q.complete();
     }
    //println("giallo giusto");
  }
  else  if(temp_1 != null){
    concatenateSolution(temp_1);
   for(int i : temp_1){
      Move q = allMoves[i];
      //sequenceSolve.add(q);
      q.complete();
   }
   //println("giallo giusto");
  }
  else if(temp_2 != null){
    concatenateSolution(temp_2);
    for(int i : temp_2){
      Move q = allMoves[i];
      //sequenceSolve.add(q);
      q.complete();
   }
   //println("giallo giusto");
  }
  else {
    //println("giallo giusto");
  }
}
  
//---------------------------------------------------------------------------

int[] lastLayerOrientation_0(){
  int[] oll = null;
  int[] top ={0, 1, 2, 9, 11, 18,19, 20};
  

    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){                //68
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 2, 6, 2, 7, 2, 2, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //68'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 2, 10, 2, 11, 2, 2, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){          //68''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 5, 2, 4, 2, 2, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){           //68'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 9, 2, 8, 2, 2, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //67
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 3, 4, 3, 5, 2, 2, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //67'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 3, 8, 3, 9, 2, 2, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //67''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={6, 3, 7, 3, 6, 2, 2, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //67'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 3, 11, 3, 10, 2, 2, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //62
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 2, 5, 3, 4, 2, 5, 3, 4, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //62'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 2, 9, 3, 8, 2, 9, 3, 8, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //63
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 3, 3, 4, 4, 3, 4, 4, 3, 4, 4, 3, 3, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //63'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 3, 3, 8, 8, 3, 8, 8, 3, 8, 8, 3, 3, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //63''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 3, 3, 7, 7, 3, 7, 7, 3, 7, 7, 3, 3, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //63'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 3, 3, 11, 11, 3, 11, 11, 3, 11, 11, 3, 3, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //64
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 4, 1, 5, 2, 2, 4, 0, 5, 2, 2, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //64'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 8, 1, 9, 2, 2, 8, 0, 9, 2, 2, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //64''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 7, 1, 6, 2, 2, 7, 0, 6, 2, 2, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //64'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 11, 1, 10, 2, 2, 11, 0, 10, 2, 2, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //65
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 9, 7, 8, 4, 9, 6, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //65'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={9, 6, 11, 7, 8, 6, 10, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //65''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 10, 4, 11, 7, 10, 5, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //65'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 5, 8, 4, 11, 5, 9, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //66
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 8, 4, 10, 5, 9, 4, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //66'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 7, 8, 5, 9, 6, 8, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //66''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 11, 7, 9, 6, 10, 7, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //66'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 4, 11, 6, 10, 5, 11, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //42
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 2, 2, 5, 5, 8, 4, 9, 3, 3, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //42'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 2, 2, 9, 9, 7, 8, 6, 3, 3, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //43
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 4, 2, 5, 3, 9, 11, 2, 7, 3, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //43'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 8, 2, 9, 3, 6, 4, 2, 11, 3, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //43''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 7, 2, 6, 3, 10, 8, 2, 4, 3, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //43'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 2, 10, 3, 5, 7, 2, 8, 3, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //44
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 2, 7, 3, 6, 10, 3, 8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //44'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 11, 3, 10, 5, 3, 7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //44''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 4, 3, 5, 9, 3, 11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //44'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 2, 8, 3, 9, 6, 3, 4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //45
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 2, 7, 3, 6, 10, 2, 8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //45'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 2, 11, 3, 10, 5, 2, 7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //45''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 4, 3, 5, 9, 2, 11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //45'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 8, 3, 9, 6, 2, 4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //58
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 2, 5, 2, 5, 8, 4, 9, 2, 2, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //58'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 2, 9, 2, 9, 7, 8, 6, 2, 2, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //58''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 6, 2, 6, 11, 7, 10, 2, 2, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //58'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 2, 10, 2, 10, 4, 11, 5, 2, 2, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //61
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 6, 11, 4, 11, 5, 10, 5, 5, 7, 7, 8, 4, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //59
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 4, 2, 5, 2, 9, 2, 2, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //59'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 8, 2, 9, 2, 6, 2, 2, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //59''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 7, 2, 6, 2, 10, 2, 2, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //59'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 2, 10, 2, 5, 2, 2, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //60
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 6, 11, 4, 11, 5, 10, 5, 7, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //60'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 10, 4, 8, 4, 9, 5, 9, 11, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //60''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 5, 8, 7, 8, 6, 9, 6, 4, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //60'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 9, 7, 11, 7, 10, 6, 10, 8, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //87
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 3, 5, 8, 4, 9, 2, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //87'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={9, 3, 9, 7, 8, 6, 2, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //87''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={6, 3, 6, 11, 7, 10, 2, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //87'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 3, 10, 4, 11, 5, 2, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //75
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 2, 4, 4, 3, 5, 8, 4, 2, 4, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //75'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 8, 8, 3, 9, 7, 8, 2, 8, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //75''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 7, 7, 3, 6, 11, 7, 2, 7, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //75'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 2, 11, 11, 3, 10, 4, 11, 2, 11, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //96
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 2, 2, 4, 4, 3, 4, 3, 5, 2, 2, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //96'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 2, 2, 8, 8, 3, 8, 3, 9, 2, 2, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //93
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 5, 2, 4, 3, 11, 3, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //93'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 9, 2, 8, 3, 4, 3, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //93''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 2, 6, 2, 7, 3, 8, 3, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //93'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 2, 10, 2, 11, 3, 7, 3, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //92
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 2, 7, 3, 6, 2, 7, 3, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //92'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 11, 3, 10, 2, 11, 3, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //92''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 2, 4, 3, 5, 2, 4, 3, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //92'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 2, 8, 3, 9, 2, 8, 3, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //97
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 4, 2, 5, 3, 4, 9, 7, 8, 5, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //97'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 8, 2, 9, 3, 8, 6, 11, 7, 9, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //47
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 8, 8, 5, 9, 4, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //47'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 7, 7, 9, 6, 8, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //47''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 11, 6, 10, 7, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //47'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 4, 4, 10, 5, 11, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //46
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 8, 8, 7, 8, 6, 8, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //46'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 7, 7, 11, 7, 10, 7, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //46''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 11, 11, 4, 11, 5, 11, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //46'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 4, 4, 8, 4, 9, 4, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //69
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 7, 8, 4, 6, 3, 3, 5, 7, 8, 4, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //69'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={9, 11, 7, 8, 10, 3, 3, 9, 11, 7, 8, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    
       
  return oll;
}

int[] lastLayerOrientation_1(){
  int[] oll = null;
  int[] top ={0, 1, 2, 9, 11, 18,19, 20};
  
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //69''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 4, 11, 7, 5, 3, 3, 6, 4, 11, 7, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //69'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={10, 8, 4, 11, 9, 3, 3, 10, 8, 4, 11, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //98
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 2, 5, 3, 5, 7, 8, 4, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //98'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 9, 3, 9, 11, 7, 8, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //89
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 4, 2, 5, 3, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //89'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 8, 2, 9, 3, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //89''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 7, 2, 6, 3, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //89'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 2, 10, 3, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //88
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 6, 3, 7, 2, 6, 3, 7, 2, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //88'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={6, 10, 3, 11, 2, 10, 3, 11, 2, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //88''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 5, 3, 4, 2, 5, 3, 4, 2, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //88'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={5, 9, 3, 8, 2, 9, 3, 8, 2, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //95
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 8, 5, 8, 4, 9, 5, 8, 4, 9, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //95'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 7, 9, 7, 8, 6, 9, 7, 8, 6, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //95''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 6, 11, 7, 10, 6, 11, 7, 10, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //95'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 4, 10, 4, 11, 5, 10, 4, 11, 5, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //94
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={5, 9, 7, 9, 6, 8, 7, 9, 6, 8, 8, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //94'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 6, 11, 6, 10, 7, 11, 6, 10, 7, 7, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //94''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={6, 10, 4, 10, 5, 11, 4, 10, 5, 11, 11, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //94'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 5, 8, 5, 9, 4, 8, 5, 9, 4, 4, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //90
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={5, 8, 5, 9, 4, 4, 3, 3, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //90'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 7, 9, 6, 8, 8, 3, 3, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //90''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 11, 6, 10, 7, 7, 3, 3, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //90'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 4, 10, 5, 11, 11, 3, 3, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //91
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={5, 8, 4, 4, 10, 5, 5, 9, 4, 4, 11, 5 };
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //91'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 7, 8, 8, 5, 9, 9, 6, 8, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //91''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={6, 11, 7, 7, 9, 6, 6, 10, 7, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //91'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 4, 11, 11, 6, 10, 10, 5, 11, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //78
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 4, 3, 5, 3, 4, 2, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //78'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 8, 3, 9, 3, 8, 2, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //78''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 7, 3, 6, 3, 7, 2, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //78'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 11, 3, 10, 3, 11, 2, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //76
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 3, 3, 4, 4, 8, 4, 9, 4, 2, 2, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //76'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 3, 3, 8, 8, 7, 8, 6, 8, 2, 2, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //76''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 3, 3, 7, 7, 11, 7, 10, 7, 2, 2, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //76'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 3, 3, 11, 11, 4, 11, 5, 11, 2, 2, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //51
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 5, 2, 5, 8, 4, 9, 4, 2, 2, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //51'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 2, 9, 2, 9, 7, 8, 6, 8, 2, 2, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //51''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 2, 6, 2, 6, 11, 7, 10, 7, 2, 2, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //51'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 2, 10, 2, 10, 4, 11, 5, 11, 2, 2, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //50
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 2, 5, 3, 5, 8, 4, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //50'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 9, 3, 9, 7, 8, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //50''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 6, 3, 6, 11, 7, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //50'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 2, 10, 3, 10, 4, 11, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //54
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 9, 6, 3, 7, 8, 6, 9, 2, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //54'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 6, 10, 3, 11, 7, 10, 6, 2, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //54''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 10, 5, 3, 4, 11, 5, 10, 2, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //54'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 5, 9, 3, 8, 4, 9, 5, 2, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //55
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={5, 8, 4, 2, 5, 9, 4, 8, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //55'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 7, 8, 2, 9, 6, 8, 7, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //55''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 11, 7, 2, 6, 10, 7, 11, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //55'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 4, 11, 2, 10, 5, 11, 4, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //57
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 8, 6, 4, 2, 5, 3, 7, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //57'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 7, 10, 8, 2, 9, 3, 11, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //57''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 11, 5, 7, 2, 6, 3, 4, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //57'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 4, 9, 11, 2, 10, 3, 8, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //56
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 9, 4, 6, 3, 7, 2, 5, 8, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //56'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 6, 8, 10, 3, 11, 2, 9, 7, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //56''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 10, 7, 5, 3, 4, 2, 6, 11, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //56'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 5, 11, 9, 3, 8, 2, 10, 4, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //81
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 8, 4, 2, 5, 3, 9, 2, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //81'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 7, 8, 2, 9, 3, 6, 2, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //81''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 11, 7, 2, 6, 3, 10, 2, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //81'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={10, 4, 11, 2, 10, 3, 5, 2, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
     for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //80
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 9, 6, 3, 7, 2, 8, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //80'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 6, 10, 3, 11, 2, 7, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //80''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 10, 5, 3, 4, 2, 11, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //80'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 5, 9, 3, 8, 2, 4, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //49
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 3, 3, 5, 2, 2, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //49'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 3, 3, 9, 2, 2, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //49''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 3, 3, 6, 2, 2, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //49'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 3, 3, 10, 2, 2, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //48
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 8, 5, 8, 4, 9, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //48'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 7, 9, 7, 8, 6, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //48''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 11, 6, 11, 7, 10, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //48'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 4, 10, 4, 11, 5, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //53
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 4, 2, 5, 3, 9, 2, 8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //53'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 8, 2, 9, 3, 6, 2, 7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //53''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 7, 2, 6, 3, 10, 2, 11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //53'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 11, 2, 10, 3, 5, 2, 4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //52
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={9, 6, 3, 7, 2, 8, 4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //52'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 10, 3, 11, 2, 7, 8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //52''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 5, 3, 4, 2, 11, 7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
 
  return oll;
 }


int[] lastLayerOrientation_2(){
  int[] oll = null;
  int[] top ={0, 1, 2, 9, 11, 18,19, 20};
  
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //52'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={5, 9, 3, 8, 2, 4, 11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //85
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={11, 2, 7, 3, 6, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //85'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 11, 3, 10, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //85''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 4, 3, 5, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //85'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 8, 3, 9, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //84
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={10, 3, 5, 2, 4, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //84'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 3, 9, 2, 8, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //84''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 3, 6, 2, 7, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //84'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={6, 3, 10, 2, 11, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //73
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 10, 3, 5, 2, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //73'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 5, 3, 9, 2, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //73''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 9, 3, 6, 2, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //73'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 2, 6, 3, 10, 2, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //72
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={5, 3, 8, 2, 4, 3, 5, 9, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //72'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 3, 7, 2, 8, 3, 9, 6, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //72''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 3, 11, 2, 7, 3, 6, 10, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //72'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={10, 3, 4, 2, 11, 3, 10, 5, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //86
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //86'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //86''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //86'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //74
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 5, 3, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //74'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 2, 9, 3, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //74''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 2, 6, 3, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //74'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 2, 10, 3, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //79
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={4, 2, 5, 2, 4, 3, 5, 3, 5, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //79'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 2, 9, 2, 8, 3, 9, 3, 9, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //79''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 2, 6, 2, 7, 3, 6, 3, 6, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //79'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 2, 10, 2, 11, 3, 10, 3, 10, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //77
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 3, 7, 3, 6, 2, 7, 2, 7, 9, 6, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //77'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={10, 3, 11, 3, 10, 2, 11, 2, 11, 6, 10, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //77''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={5, 3, 4, 3, 5, 2, 4, 2, 4, 10, 5, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //77'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={9, 3, 8, 3, 9, 2, 8, 2, 8, 5, 9, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //71
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 4, 2, 5, 10, 4, 3, 4, 4, 2, 4, 11, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //71'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={8, 8, 2, 9, 5, 8, 3, 8, 8, 2, 8, 4, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //71''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={7, 7, 2, 6, 9, 7, 3, 7, 7, 2, 7, 8, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //71'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 11, 2, 10, 6, 11, 3, 11, 11, 2, 11, 7, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //70
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={7, 7, 3, 7, 11, 6, 2, 7, 7, 3, 6, 10, 7};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //70'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={11, 11, 3, 11, 4, 10, 2, 11, 11, 3, 10, 5, 11};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //70''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={4, 4, 3, 4, 8, 5, 2, 4, 4, 3, 5, 9, 4};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //70'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={8, 8, 3, 8, 7, 9, 2, 8, 8, 3, 9, 6, 8};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //82
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={4, 3, 5, 2, 2, 4, 2, 11, 3, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //82'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={8, 3, 9, 2, 2, 8, 2, 4, 3, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //82''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={7, 3, 6, 2, 2, 7, 2, 8, 3, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //82'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={11, 3, 10, 2, 2, 11, 2, 7, 3, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //83
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.x==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.x==-1)){
                      int[] temp ={5, 2, 2, 4, 2, 5, 2, 4, 4, 11, 2, 10, 3, 5};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.y==-1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.z==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.z==1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.y==-1)){            //83'
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.z==-1)){
                      int[] temp ={9, 2, 2, 8, 2, 9, 2, 8, 8, 4, 2, 5, 3, 9};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.x==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.y==-1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.x==1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //83''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.y==-1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.x==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={6, 2, 2, 7, 2, 6, 2, 7, 7, 8, 2, 9, 3, 6};
                      oll = temp;
    }}}}}}}}}}}}}}}}
    for(int i: top){
      if((cube[i].x==1)&&(cube[i].z==1)&&(cube[i].faces[3].normal.z==1)){
        for(int i1: top){
        if((cube[i1].x==1)&&(cube[i1].z==0)&&(cube[i1].faces[3].normal.x==1)){
          for(int i2: top){
          if((cube[i2].x==1)&&(cube[i2].z==-1)&&(cube[i2].faces[3].normal.y==-1)){
            for(int i3: top){
            if((cube[i3].x==0)&&(cube[i3].z==1)&&(cube[i3].faces[3].normal.y==-1)){
              for(int i4: top){
              if((cube[i4].x==0)&&(cube[i4].z==-1)&&(cube[i4].faces[3].normal.z==-1)){            //83'''
                for(int i5: top){
                if((cube[i5].x==-1)&&(cube[i5].z==1)&&(cube[i5].faces[3].normal.z==1)){
                  for(int i6: top){
                  if((cube[i6].x==-1)&&(cube[i6].z==0)&&(cube[i6].faces[3].normal.y==-1)){
                    for(int i7: top){
                    if((cube[i7].x==-1)&&(cube[i7].z==-1)&&(cube[i7].faces[3].normal.y==-1)){
                      int[] temp ={10, 2, 2, 11, 2, 10, 2, 11, 11, 7, 2, 6, 3, 10};
                      oll = temp;
    }}}}}}}}}}}}}}}}

  return oll;
 }


}
