/*
 ===Inheritance===
 keyword: ':'
 
 In Kotlin, every class is final so if you want making class which other class inheritance
 you should use "open" keyword		
 */

open class ABC{
	fun think(){
		println("Hey!! i am thinking ")
	}
}
//inheritence happend using default constructor
class BCD: ABC(){
	
}
//Error Because BCD class is final class
/*
class CDE: BCD{
	
}
*/

fun main(args: Array<String>){
	var a = BCD()
	a.think()
}