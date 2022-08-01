
class Solution{

  void  createSolution(){ //combine all partial solutions into one single list of integers rappresenting the different moves
    
    cross = new Cross();
    f2l = new F2L();
    oll = new OLL();
    pll = new PLL();
    
    cross.start1(); //4 partial AL for the white cross
    sleep(10);
    cross.start2();
    sleep(10);
    cross.start3();
    sleep(10);
    cross.start4();
    sleep(10);
    f2l.startAngoloRV1();// 8 partial AL for the complition of the first two layers
    sleep(10);
    f2l.startAngoloRV2();
    sleep(10);
    f2l.startAngoloBR1();
    sleep(10);
    f2l.startAngoloBR2();
    sleep(10);
    f2l.startAngoloAB1();
    sleep(10);
    f2l.startAngoloAB2();
    sleep(10);
    f2l.startAngoloVA1();
    sleep(10);
    f2l.startAngoloVA2();
    sleep(10);
    oll.startOLL(); // orientation of last layer
    sleep(10);
    pll.startPLL(); // permutation of last layer
    
    calculatingFinished = true;
    
  }


}
