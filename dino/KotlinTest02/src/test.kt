fun main(args: Array<String>){
	val a: Int = 10000
	val d: Double = 100.00
	val f: Float = 100.00f
	val l: Long = 1000000004
	val s: Short = 10
	val b: Byte = 1
	
	println("Your Int Value is " + a);
	println("Your Int Double is " + d);
	println("Your Int Float is " + f);
	println("Your Int Long is " + l);
	println("Your Int Short is " + s);
	println("Your Int Byte is " + b);
	
	/*
 	How Kotlin Declare about Variable
 	val: constant Variable
 	var: Variable
	 */
	val letter: Char
	letter = 'A'
	//letter = 'B'	Error Because val is constant variable
	println("$letter")
	
	var letter2: Char
	letter2 = 'A'
	letter2 = 'B'
	println("$letter2")
	
	val bool: Boolean
	bool = true
	println("Your character value is " + "$bool");
	
	var rawString: String = "I am Raw String!"
	val escapedString: String = "I am escaped String!\n"
	print("Hello!" + escapedString);
	println("Hey!" + rawString);
	
	val numbers: IntArray = intArrayOf(1, 2, 3, 4, 5)
	println("Hey!! I am array Example" + numbers[2])
	
	/*
	 ===[Collections]===
 	immutable collection : Cannot be Editable
 	mutable collection : Editable
	 */
	val numbersList: MutableList<Int> = mutableListOf(1, 2, 3)
	val readOnlyView: List<Int> = numbersList
	
	println("My immutable list--" + numbersList)
	numbersList.add(4)
	
	println("My immutable list after addition --" + numbersList)
	println(readOnlyView)
	//readOnlyView.clear()	//Error, cannot editable
	//readOnlyView.add(5)	//Error, cannot editable
	
	/*
 	first(), last(), filter()
	 */
	var items = listOf(1,2,3,4);
	println("First Element of our list----" + items.first())
	println("Last Element of our list----" + items.last())
	println("Even Numbers of our list----" + items.filter{it % 2 == 0})
	
	val readWriteMap = hashMapOf("foo" to 1, "bar" to 2)
	println(readWriteMap["foo"])
	
	val strings = hashSetOf("a","b","a","a")
	println("My Set Values are " + strings)
	
	/*
 	Ranges
	 */
	val i:Int = 2;
	for(j in 1..4)
		print(j)
	if(i in 1..10){		//equivalent of 1 <= i && i <= 10
		println("We found your number --"+i)
	}
}