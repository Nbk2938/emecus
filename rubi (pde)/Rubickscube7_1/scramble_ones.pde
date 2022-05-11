

void scrambleOnes(){

for (int i = 0; i < scrambled +1; i++) {
      int r = int(random(allMoves.length - 6)); // creating random moves 
      scrambledArray [i] = r;
    
      Move m = allMoves[r];
      sequence.add(m);     //  saving the random moves in an arraylist of moves 
      m.complete();      //  scrambeling the cube virtually 
    }

  shit++;
  //println(scrambledArray);
}

void takeSolutionOnes() {
  solution.createSolution();
  //println(solutionArray);
  shit++;
}
