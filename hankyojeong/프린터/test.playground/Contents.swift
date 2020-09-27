import Cocoa
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var printerArray: [Int] = priorities
    var temp: Int = -1
    var relocation: Int = location + 1
    
    for _ in 0 ... (printerArray.count - 1) {
        var index = 1
        if index < printerArray.count {
            for _ in index ... (printerArray.count - 1) {
                // Swap
                if printerArray[0] < printerArray[index] {
                    temp = printerArray[0]
                    // Move All of Elements forward
                    var index2 = 0
                    for _ in index2 ... (printerArray.count - 2) {
                        printerArray[index2] = printerArray[index2 + 1]
                        index2 += 1
                    }
                    printerArray[printerArray.count - 1] = temp
                    
                    if location == 0 {
                        relocation = (printerArray.count - 1)
                    } else {
                        relocation -= 1
                    }
                    break
                }
                index += 1
            }
        }
    }
    
    // Array Check
//    for priority in printerArray {
//        print("\(priority)")
//    }
//
//    var i = 0
//    if temp != -1 {
//        for _ in 0 ... (printerArray.count - 2) {
//            printerArray[i] = printerArray[i + 1]
//            i+=1;
//        }
//        printerArray[printerArray.count - 1] = temp
//    }
//
//    // Sort
//    var index1 = 0
//    for _ in index1 ... (printerArray.count - 1) {
//        var index2 = index1 + 1;
//        if index2 < printerArray.count {
//            for _ in index2 ... (printerArray.count - 1) {
//                if printerArray[index1] < printerArray[index2] {
//                    let temp = printerArray[index1]
//                    printerArray[index1] = printerArray[index2]
//                    printerArray[index2] = temp
//                }
//                index2 += 1
//            }
//        }
//        index1 += 1
//    }
    
//    for priority in printerArray {
//        print("\(priority)")
//    }
    return relocation
}

print("\(solution([2, 1, 3, 2], 2))")
print("\(solution([1, 1, 9, 1, 1, 1], 0))")
