object exercise1 {
    
  
  def exercise1_11_recursive(n:Integer):Integer = {
    if(n<3) n else exercise1_11_recursive(n-1)+2*(exercise1_11_recursive(n-2))+3*(exercise1_11_recursive(n-3))
  }

  //exercise 1-11 iterative interpretation
  def f(n:Int):Int={
    def fIter(a:Int, b:Int, c:Int, count:Int):Integer = {
      if(count<3)a else{
        fIter((a+2*b+3*c), a, b, (count - 1))
      }
    }
    if(n<3)n else{
      fIter(2,1,0,n)
    }
  }

  def exercise1_12_pascals_triangle():Unit={
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }
  
  
  def pascal(c: Int, r: Int): Int = {
    if(c<0 || r<0) 0
    else if (c ==0)  1
    else  pascal(c, r - 1) + pascal(c - 1, r - 1)
  }
 }
