package chapterOne

object Expontential {

  def main(args: Array[String]): Unit = {
    println("hello")
    println(fastExponential(2,4))
  }
  
  def fastExponential(b:Int, n:Int):Int={
    if( n==0 ) return 1
    if(n%2 == 0){
      fastExponential(b,(n/2))*fastExponential(b,(n/2))
    }else{
      b*fastExponential(b, n-1)
    }
  }

}