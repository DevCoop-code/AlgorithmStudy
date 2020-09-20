import UIKit

var str = "Truck on Bridge"

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 0
    var waitTrucks = truck_weights
    var w = 0
    
    var times = [Int]()
    var weights = [Int]()
    
    while !waitTrucks.isEmpty{
        time += 1
        if !times.isEmpty{
            if time == times.first! {
            times.removeFirst()
            w -= weights.first!
            weights.removeFirst()
        }
    }
        if w+waitTrucks.first! <= weight{
            w += waitTrucks.first!
            weights.append(waitTrucks.first!)
            times.append(time+bridge_length)
            waitTrucks.removeFirst()
        }
    }
    return times.last!
}


print(solution(100, 100, [10]))
