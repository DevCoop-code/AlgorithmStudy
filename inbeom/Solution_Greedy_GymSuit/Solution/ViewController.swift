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
        print("result 1 : \( solution( 5, [2,4], [1,3,5]) )") // 5
        print("result 2 : \( solution( 5, [2,4], [3]) )") // 4
        print("result 3 : \( solution( 3, [3], [1]) )") // 2


        print("Q 5 : \( solution( 5, [1,2,3,5], [1,3,4,5]) )") // 4
        print("Q 0 : \( solution( 5, [1,2], [2,3]) )") // 4

        print("result 00 : \( solution( 5, [1,2,3], [1,2]) )") // 4

    }



    func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

        var result : Int = n - lost.count
        var reserved = reserve
        var losted = lost

        reserved.sort()
        losted.sort()


        for (i,v1) in losted.enumerated() {
            for (j,v2) in reserved.enumerated() {
                if(v1 == v2){ // 잃어버린 사람이 여벌을 갖고왔다면 잃어버린 목록에서 제외
                    losted[i] = -1
                    reserved[j] = -1
                    result = result+1
                    break
                }
            }
        }


        for (_,v1) in losted.enumerated() {

            for (j,v2) in reserved.enumerated() {
                //잃어버린사람과 앞뒤 번호라면
                if(v1 == v2+1 || v1 == v2-1){ //잃어버린사람과 앞뒤 번호라면
                    result = result+1
                    reserved[j] = -1
                    break
                }
            }
        }

        return result
    }
}
