void sleep(){
  try{
    Thread.sleep(10);
   } catch (Exception e){}
}

class Solution{


  
  void  takeSequence(){
    
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
  //  println(sequenceSolve);
    
    startAnimation = true;
    
  }


}
