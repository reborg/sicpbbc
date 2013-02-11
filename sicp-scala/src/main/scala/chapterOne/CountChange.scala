package chapterOne

object CountChange {

  var counter = 0
  def main(args: Array[String]): Unit = {
    println(countChange(64))
    //these are the results we get, amount on left, steps on right
    //1 = 11 procedural steps or calls to cc
    //2 = 13 procedural steps or calls to cc
    //4 = 17
    //8 = 33
    //16 = 103
    //32 = 475
    //64 = 3403
  }
  
  def countChange(amount: Int): Int = {
    cc(amount, 5)
  }
  
  def firstDenomination(kindsOfCoins:Int):Int={
    kindsOfCoins match {
      case 1 => 1
      case 2 => 5
      case 3 => 10
      case 4 => 25
      case 5 => 50
      case _ => 0
    } 
  }
  def cc(amount: Int, kindsOfCoins: Int):Int = {
    counter+=1
    println("procedure step number "+counter+" amount ="+amount+", kinds of coins ="+kindsOfCoins)
    if(amount == 0) return 1
    if(amount < 0 || kindsOfCoins == 0) return 0
    
    	//the number of ways to change amount a using n kinds of coins equals
        //the number of ways to change amount a using all but the first kind of coin
        cc(amount, kindsOfCoins-1)+
    	//plus
    	//the number of ways to change amount a-d using all n kinds of coins where d is the 
        //denomination of the first kind of coin
    	cc(amount-firstDenomination(kindsOfCoins), kindsOfCoins)
    
  }
  
}
