/*
===Constructor=== 		
In Kotlin There is a two types of Constructor
1. primary constructor
 role] initializes the class
2. secondary constructor
 role] include some extra logic while initializing the same
 use "constructor" keyword
*/

fun main(args: Array<String>){
	val person1 = Person("TutorialsPoint.com", 15)
	println("First Name = ${person1.firstName}")
	println("Age = ${person1.age}")
	
	val HUman = HUman("TutorialsPoint.com", 25)
	print("${HUman.message}" + "${HUman.firstName}" + "Welcome to the example of Secondary constructor, Your age is-${HUman.age}")
}

class Person(val firstName: String, var age: Int){
	
}

class HUman(val firstName: String, var age: Int){
	val message:String = "Hey!!!"
	constructor(name: String, age:Int, message: String):this(name,age){
		
	}
}