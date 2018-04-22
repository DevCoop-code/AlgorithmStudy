fun main(args: Array<String>) {

    //Numbers
    var a :Int = 10000
    var d :Double = 100.00
    var f :Float = 100.00f
    var l :Long = 1000000004
    var s :Short = 10
    var b :Byte = 1

    println("Your Int value is " + a)
    println("Your Double value is " + d)
    println("Your Float value is " + f)
    println("Your Long value is " + l)
    println("Your Short value is " + s)
    println("Your Byte value is " + b)


    //Char

    var letter : Char

    letter = 'A'

    println("my char values is $letter")


    //Boolean

    var isPlay: Boolean
    isPlay = false

    println("my boolena values is " +"$isPlay" )


    //Strings
    // it has two types of way to declare string
    // first is raw string the other is , escaped string

    var rawString : String = "I am Raw String"
    var escapedString: String = "I am escaped String!  \n "

    println("Hello!"+escapedString)
    println("Hey!!"+rawString)


    //Array
    var numbers : IntArray = intArrayOf(1,2,3,4,5)
    println("Hey !! I am array Example " + numbers[2])

    //Kotlin has two types of collection - one is immutable collection
    // (which means lists, maps and sets that cannot be editable) and
    // another is mutable collection (this type of collection is editable).

    //Collection

    var mutableNumbers : MutableList<Int> = mutableListOf(1,2,3)
    var readOnlyNumbers: List<Int> = mutableNumbers

    println("my mutable list--"+mutableNumbers)    // prints "[1, 2, 3]"
    mutableNumbers.add(4)
    mutableNumbers.add(5)

    println("my mutable list after addition --"+mutableNumbers)// prints "[1, 2, 3, 4]"
    println("my immutable list after addition --"+readOnlyNumbers)

//    readOnlyNumbers.clear()    // -> does not compile
    // gives error


    //keyvalue

    val items = listOf(1, 2, 3, 4)
    println("First Element of our list----"+items.first())
    println("Last Element of our list----"+items.last())
    println("Even Numbers of our List----"+items.filter { it % 2 == 0 })


    val readWriteMap = hashMapOf("foo" to 1, "bar" to 2)
    println(readWriteMap["foo"])  // prints "1"

    val strings = hashSetOf("a", "b", "c", "c")
    println("My Set Values are"+strings)


    //range
    val i:Int  = 2
    for (j in 1..4)
        print(j) // prints "1234"

    if (i in 1..10) { // equivalent of 1 < = i && i < = 10
        println("we found your number --"+i)
    }


}