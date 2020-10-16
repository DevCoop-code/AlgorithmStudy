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

        print("result : \(solution ( 2, 10, [7,4,5,6] ) )") // 8
            print("result 2 : \(solution ( 100, 100, [10] ) )") // 101
        print("result 3 : \(solution ( 100, 100, [10,10,10,10,10,10,10,10,10,10]) )") // 110
    }


    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        //대기 트럭
        var queueVal = Queue<Int>()
        //다리를 지난 트럭
        var queueFinish = Queue<Int>()
        //다리의 트럭
        var bridgeQueue = Queue<[Int]>()

        var resultVal : Int = 0
        var totalWeight : Int = 0


        for i in 0..<truck_weights.count{
            queueVal.enqueue(element: truck_weights[i] )
        }


        let finishCount = queueVal.count

        while(queueFinish.count < finishCount){
//            print("trucks [\(resultVal)] :\(queueVal) " )

            if(!queueVal.isEmpty()){
//                print("trucks [\(resultVal)] :\(queueVal) " )
//                print("bridgeQueue [\(resultVal)] :\(bridgeQueue) " )

                let p = queueVal.peek()
                let truck_weight : Int = p!
                if( (totalWeight + truck_weight) <=  weight ){
                    //최대 무게까지 새로운 트럭 증가 (다리 무게가 새로운 트럭이 들어갈 수 있는 경우)
                    let p = queueVal.peek()
                     let truck_weight : Int = p!
                      queueVal.dequeue()
                      totalWeight = totalWeight+truck_weight
                      bridgeQueue.enqueue(element: [truck_weight,bridge_length])

//                    //최초 거리가 0 이면 완료
                    if( (bridge_length-1) <= 0 ){
                        queueFinish.enqueue(element: truck_weight) //완료트럭증가
                        totalWeight = totalWeight - truck_weight
                    }
                }
            }


            resultVal = resultVal+1

            var index : Int = 0
            for i in 0..<(bridgeQueue.count){
                if(bridgeQueue.isEmpty()){
                    break
                }

                var p = bridgeQueue.peekIndex(index: i + index)
//                let p = queueVal.peek()
                //지나갈트럭이 다리길이만큼 지난지 체크
                if((p?[1])! <= 0){
                    index = index-1
                    let truck_weight : Int = p![0]
                    queueFinish.enqueue(element: truck_weight) //완료트럭증가
                    totalWeight = totalWeight - truck_weight
                    bridgeQueue.dequeue()
                }
                else{
                    // 다리길이 (bridge_length)에서 0까지 왔다면 다리무게에서 제거 // 대기 트럭 제거
                    p![1] = p![1] - 1
//                    print("###2 Drive trucks [\(resultVal)] :\(queueVal) " )
//                    print("bridgeQueue [\(resultVal)] :\(bridgeQueue) " )

                    if((p?[1])! <= 0){
                        index = index-1
                        let truck_weight : Int = p![0]
                        queueFinish.enqueue(element: truck_weight) //완료트럭증가
                        totalWeight = totalWeight - truck_weight
                        bridgeQueue.dequeue()
                    }else{
                        bridgeQueue.changequeue(index: i + index, element: p!)
                    }

                }
            }

//            print("bridge [\(resultVal)] :\(bridgeQueue) " )

        }

        resultVal = resultVal+1


        return resultVal
    }

}
