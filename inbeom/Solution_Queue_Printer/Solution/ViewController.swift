//
//  ViewController.swift
//  Solution
//
//  Created by INBEOM on 2020/07/10.
//  Copyright © 2020 ibp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

//        print("result : \(solution([2, 1, 3, 2],2))")
        print("result : \(solution([1, 1, 9, 1, 1, 1],0))") // 5
        print("result : \(solution([1, 1, 9, 1, 1, 1],1))") // 6
        print("result : \(solution([1, 2, 9, 4, 3, 7],2))") // 1
    }


    func solution(_ priorities:[Int], _ location:Int) -> Int {
        //Srot
        var queueVal = Queue<[Int]>()

        for i in 0..<priorities.count{

            //작업위치 플래그 지정
            queueVal.enqueue(element: [i,priorities[i]] )
//            sortKey.append( [i,priorities[i] ] )
        }


        let sortArr : [Int] = priorities.sorted()

        var pointer : Int = priorities.count - 1
        var resultVal : Int = 1;


        while(!queueVal.isEmpty()){

            //Pop Queue
            let p = queueVal.peek()
            queueVal.dequeue()

//            sortKey.remove(at: 0)
//            p.indexa
            if(p?[1] == sortArr[pointer]){
                if(p?[0] == location){
                    return resultVal
                }
                resultVal = resultVal+1
                pointer = pointer-1
            }
            else{
                queueVal.enqueue(element: p!);
            }


        }

        return resultVal
    }

  

}
