/*
===Interface=== 		
*/

interface ExampleInterface{
	val myVar: String					// abstract property
	fun absMethod()						// abstract method
	fun sayHello() = "Hello there"		//method with default implementation
}

interface ExampleInterface2{
	var myVar: Int
	fun absMethod(): String
	
	fun hello(){
		println("Hello there, Welcome to TutorialsPoint.com!")
	}
}

class InterfaceImp: ExampleInterface2{
	override var myVar: Int = 25
	override fun absMethod() = "Happy Learning"
}

interface A{
	fun printMe(){
		println(" method of interface A")
	}
}
interface B{
	fun printMeToo(){
		println("I am another Method from interface B")
	}
}

//implements two interfaces A and B
class multipleInterfaceExample: A, B

fun main(args: Array<String>){
	val obj = InterfaceImp()
	println("My variable Value is = ${obj.myVar}")
	println("Calling hello(): ")
	obj.hello()
	
	print("Message from the Website-- ")
	println(obj.absMethod())
	
	//Kotlin cannot inherit multiple classes but multiple implement is okay!! <- I think it is like a Java(dino)
	val obj2 = multipleInterfaceExample()
	obj2.printMe()
	obj2.printMeToo()
}