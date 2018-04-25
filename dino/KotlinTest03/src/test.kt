fun main(args: Array<String>){
	val a:Int = 5;
	val b:Int = 2
	var max: Int
	
	if(a > b){
		max = a
	}else{
		max = b
	}
	
	println("Maximum of a or b is " + max)
	
	/*
 	when
 	like a 'switch' statement in other programming language
	 */
	val x:Int = 5;
	when(x){
		1 -> println("x == 1")
		2 -> println("x == 2")
		else -> {
			println("x is neither 1 nor 2")
		}
	}
	
	val y:Int = 1;
	when(y){
		1,2 -> println("y == 1 or y == 2")
		else -> {
			println("y is neither 1 nor 2")
		}
	}

	//Usage of '$'
	val items = listOf(1,2,3,4)
	for(i in items)
		println("values of the array" + i)
	for((index, value) in items.withIndex())
		println("The element at $index is $value")
	
	var z:Int = 0
	println("Example of While Loop--")
	while(z <= 10){
		println(z)
		z++
	}
	z = 0;
	do{
		z += 10
		println("I am inside Do block ---"+z)
	}while(z <= 50)
	
	var c:Int = 10
	println("The value of X is--" + doubleMe(c))
	
	/*
 	Continue & Break
 	Different is that Kotlin use label system
	 */
	println("Example of Break and Continue")
	myLabel@ for(x in 1..10){
		if(x == 5){
			println("I am inside if block with value"+x+"\n-- hence it will close the operation")
			break@myLabel
		}else{
			println("I am inside else block with value"+x)
			continue@myLabel
		}
	}
}

fun doubleMe(x:Int):Int{
	return 2*x
}