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
        print("result 0 : \(solution([2,1,2,3,2,4,2,5]) )") // [1]
        print("result 1 : \(solution([1,2,3,4,5]) )") // [1]
        print("result 2 : \(solution([1,3,2,4,2]) )") // [1,2,3]

        print("result 3 : \(solution([1,3,2,4,2,1, 2, 3, 4, 5, 1, 2, 3, 4, 5,1, 2, 3, 4, 5, 1, 2, 3, 4, 5]) )") //
    }



    func solution(_ answers:[Int]) -> [Int] {
        let answer = (
            a: [1, 2, 3, 4, 5], // index % 5
            b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
            c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
        )
        var point = [1:0, 2:0, 3:0]



        for (i, v) in answers.enumerated() {
            if v == answer.a[i % answer.a.count] { point[1] = point[1]! + 1 }
            if v == answer.b[i % answer.b.count] { point[2] = point[2]! + 1 }
            if v == answer.c[i % answer.c.count] { point[3] = point[3]! + 1 }
        }

        return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
    }

    func solution00(_ answers:[Int]) -> [Int] {


        print("answers : \(answers)")


        let supo = [[1, 2, 3, 4, 5, 1, 2, 3, 4, 5],
                    [2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5],
                    [3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]




        var resultArray : Array<[Int]> = Array()

        for i in 0..<supo.count {
            resultArray.append([exe(answers, supo[i]) ,i+1])
        }

        print("resultArray : \(resultArray)")
        var maxVal : Int = 0

        return resultArray.sorted { $1[0] < $0[0] }.filter {
            //최대값 외 제거
            if(maxVal <= $0[0] && $0[0] > 0){
                maxVal = $0[0]
                return true
            }
            else{
                return false
            }
        }.map { (val) -> Int in
            return val[1]
        }
    }

    func exe(_ answers:[Int] , _ data:[Int]) -> Int {
        var result : Int = 0

        var j  : Int = 0;
        for i in 0..<answers.count{

            let p = answers[i]


            //제한조건
            if(i > 10000){
                break
            }
            if( p <= 0 || p > 5){
                continue
            }

            if(data[j] == p){
                result = result+1
            }

            j = j+1

            if(j == data.count){
                j = 0
            }
        }

        return result
    }
}
