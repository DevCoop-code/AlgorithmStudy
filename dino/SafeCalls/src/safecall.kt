fun main(args: Array<String>){
	var a:String
	a = "Hello Kotlin"
	//a = null	//Compile Error String type can't have null
	
	var b:String?
	b = "Hello Dare"
	b = null	//Compile OK!!
	
	/*
 	Safe Calls
	 */
	print(b?.length)
	
	when(b?.length){
		null -> println("b.length is null")
	}
	/*
 	If you put '?' There is no Runtime Error
 	if b is null, return null
	 */
}