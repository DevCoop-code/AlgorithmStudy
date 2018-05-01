/*
===[Data Classes]===
marked: "data"
Data Class can be used to hold the basic data apart.
Data Class does not provide any other functionality 		
all the data classes need to have one primary constructor
*/

fun main(args: Array<String>){
	val book: Book = Book("Kotlin", "TutorialPoint.com", 5)
	println("Name of the Book is--" + book.name)
	println("Publisher Name--" + book.publisher)
	println("Review of the book is--" + book.reviewScore)
	book.reviewScore = 7
	println("Review of the book is--" + book.toString())
	println("Review of the book is--" + book.hashCode())
}

data class Book(val name: String, val publisher: String, var reviewScore: Int)