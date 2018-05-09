/*
=====[Exception Handling]=====
The exceptions in Kotlin is pretty similar to the exceptions in Java 		
*/

fun main(args: Array<String>){
	try{
		val myVar:Int = 12
		val v:String = "Tutorialspoint.com"
		v.toInt()
	}catch(e:Exception){
		e.printStackTrace();
	}finally{
		println("Exception Handling in Kotlin")
	}
}