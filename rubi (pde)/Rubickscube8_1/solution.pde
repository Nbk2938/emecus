
class Solution{

  void  createSolution(){
    
    cross = new Cross();
    f2l = new F2L();
    oll = new OLL();
    pll = new PLL();
    
    cross.start1();
    sleep(1);
    cross.start2();
    sleep(1);
    cross.start3();
    sleep(1);
    cross.start4();
    sleep(1);
    f2l.startAngoloRV1();
    sleep(1);
    f2l.startAngoloRV2();
    sleep(1);
    f2l.startAngoloBR1();
    sleep(1);
    f2l.startAngoloBR2();
    sleep(1);
    f2l.startAngoloAB1();
    sleep(1);
    f2l.startAngoloAB2();
    sleep(1);
    f2l.startAngoloVA1();
    sleep(1);
    f2l.startAngoloVA2();
    sleep(1);
    oll.startOLL();
    sleep(1);
    pll.startPLL();
    
    calculatingFinished = true;
    //delay(1000);
    
  }


}
