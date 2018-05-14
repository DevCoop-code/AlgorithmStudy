open class ABC {
    open fun think() {
        println("Hey I am thinking now for my future ")
    }
}

class BCD:ABC {
    constructor() : super()

    override fun think() {
        println("Hey different way? ")
    }
}

fun main(args:Array<String>) {
    var b = BCD()
    b.think()
}