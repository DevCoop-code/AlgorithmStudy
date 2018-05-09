/*
 ===[Functions]===
keyword: fun
 
fun <nameOfFunction>(<argument>:<argumentType>):<ReturnType>
*/

fun main(args: Array<String>){
	//println(MyFunction("tutorialsPoint.com"))
	
	/*
 	Lambda Function
	 */
	val mylambda:(String)->Unit = {s:String->println(s)}
	val v:String = "TutorialsPoint.com"
	//mylambda(v)
	
	/*
 	Inline Function
	 */
	myFun(v, mylambda)
}

fun MyFunction(x: String): String{
	var c:String = "Hey!! Welcome To ---"
	return (c+x)
}

fun myFun(a: String, action: (String)->Unit){
	print("Heyyy!!!!")
	action(a)
}