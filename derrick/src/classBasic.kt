class MyClass {
    private var name : String = "Hello kotlin"

    fun printMe() {
        print("Hi Derrick")

    }


}

class Outer {
    class Nested {
        fun foo() = "Welcome to The TutorialsPoint.com"
    }
}

class SecondOuter {
    private val welcomeMessage: String = "Welcome to the TutorialsPoint.com"
    inner class Nested {
        fun foo() = welcomeMessage
    }
}

fun main(args: Array<String>) {
    var testObject = MyClass()

    testObject.printMe()

    val demo = Outer.Nested().foo() // calling nested class method
    print(demo)

    var demo2 = SecondOuter().Nested().foo()
    print(demo2)





    var programmer :Human = object:Human  {
        override fun think() { // overriding the think method
            print("I am an example of Anonymous Inner Class ")
    }
}
    programmer.think()

}


interface Human {
    fun think()
}

//typealias NodeSet = Set<Network.Node>
//typealias FileTable<K> = MutableMap<K, MutableList<File>>