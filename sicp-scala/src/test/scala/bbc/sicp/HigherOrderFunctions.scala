package bbc.sicp


import org.scalatest.FunSuite
import org.junit.runner.RunWith
import org.scalatest.junit.JUnitRunner

@RunWith(classOf[JUnitRunner])
class HigherOrderFunctions extends FunSuite{

  def sumintegers(a:Int, b:Int):Int = {
    if(a > b) 0 else a + (sumintegers(a+1, b))
  }
  
  def cube(a:Int)=a*a*a
  
  def sumcubes(a:Int, b:Int):Int = {
    if(a > b) 0 else cube(a)+sumcubes(a+1, b)
  }
  
  def pisum(a:Int, b:Int):Double = {
	  if(a > b) 0 else(1.0 / (a*(a+2)))+pisum(a+4,b)
  }
  
  def sum(term:Int=>Int, a:Int, next:Int=>Int, b:Int):Int={
    if(a > b) 0 else term(a)+sum(term,next(a), next, b)
  }
  
  def newsumintegers(a:Int, b:Int):Int = {
    sum((x: Int) => x, a, (x: Int) => x + 1, b)
  }
  
  def newcube(a:Int, b:Int):Int={
    sum(cube, a, (x: Int) => x + 1, b)
  }
  
  test("integers between 3 and 6 should equal 18"){
    assert(18 == sumintegers(3,6))
    assert(18 == newsumintegers(3,6))
  }
  
  test("summing cubes between 1 and 10 should equal 3025"){
    assert(3025 == sumcubes(1,10))
    assert(3025 == newcube(1,10))
  }
  
  test("pi sum"){
    assert(pisum(1,1000) > 0.3)
  }
  
}