class myClass{
	//property(data member)
	private var name: String = "Tutorials.point"
	
	//member function
	fun printMe(){
		println("You are at the best Learning website Named-"+name)
	}
}

fun main(args: Array<String>){
	/*
 	[Class]
	 */
	val obj = myClass();
	obj.printMe()
	
	/*
 	[Nested Class]
	 */
	//When a class has been created inside other class, This class is by default static
	val demo = Outer.Nested().foo()
	println(demo)
	
	/*
 	[Inner Class]
	 */
	val demo2 = Outer().Nested2().foo()
	println(demo2)
	
	/*
 	[Anonymous Inner Class]
	 */
	var programmer: Human = object:Human{	//Creating an instance of the interface
		override fun think(){	//overriding the think method
			println("I am an example of Anonymous Inner Class")
		}
	}
	programmer.think()
}

class Outer{
	val outer_member = "looooook!!"
	class Nested{
		fun foo() = "Welcome to the TutorialsPoint.com"
		fun foo2(){
			//nested class is static so this class cannot access outer class non-static variable
			//print(outer_member)
		}
	}
	//??? seems like static class but this class can access outer non static variable
	inner class Nested2{
		fun foo() = outer_member
	}
}

interface Human{
	fun think()
}