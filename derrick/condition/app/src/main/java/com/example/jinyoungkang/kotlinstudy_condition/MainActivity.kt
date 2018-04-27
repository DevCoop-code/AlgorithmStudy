package com.example.jinyoungkang.kotlinstudy_condition

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.widget.TextView

class MainActivity : AppCompatActivity() {


    lateinit var mNameTextView : TextView
    lateinit var mSecondTextView : TextView
    lateinit var mHandler : Handler

    var mAge :Int = 30
    var a: Int = 5
    var b: Int = 2
    var max: Int = 0


    fun testLoopFeature() {

        val items = listOf(1, 2, 3, 4)
        for (i in items) println("values of the array"+i)

        var secondItems = listOf(4,3,2,1)

        for ((index , value ) in secondItems.withIndex()) {

        }



    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        mNameTextView = findViewById(R.id.mNameTextView)
        mSecondTextView = findViewById(R.id.mSecondTextView)

        mHandler = Handler()

        if(a > b) {
            max = 30

        } else {
            max = 20
        }

        mHandler.post(Runnable {
            mNameTextView.setText("value : " + max)
        })

        var x : Int = 10

        when(x) {
            1 -> print("test")
            10 -> mHandler.post(Runnable {
                mSecondTextView.setText("x value : " + x)

            })

            else -> {
                print("not match values ")
            }
        }

        testLoopFeature()

    }
}
