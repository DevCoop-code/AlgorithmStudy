import Cocoa
import Foundation

class Truck {
    var weight: Int
    var time: Int
    
    init(_ truck_weight: Int, _ truck_time:Int) {
        weight = truck_weight
        time = truck_time
    }
}

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var spendingTime:Int = 1
    var totalWeight = 0
    
    // 다리를 지나는 동안
    var truckQueue: [Truck] = []
    for truck_index in 0 ... (truck_weights.count - 1) {
        let newTruck: Truck = Truck(truck_weights[truck_index], bridge_length)
        
        truckQueue.append(newTruck)
        totalWeight += newTruck.weight
        
        // QUEUE
        while (true) {
            
            spendingTime += 1
            
            // Move
            for i in 0 ... (truckQueue.count - 1) {
                truckQueue[i].time -= 1
                
                if truckQueue[i].time < 1 && truckQueue[i].weight != -1 {
                    totalWeight -= truckQueue[i].weight
                    truckQueue[i].weight = -1
                }
            }
            
            // 더 가져올수 있느냐?
            if totalWeight <= weight {
                if (truck_index + 1) != truck_weights.count {
                    let predictWeight = totalWeight + truck_weights[truck_index + 1]
                    if predictWeight <= weight {
                        break
                    }
                }
                else if (truck_index + 1 == truck_weights.count) && (truckQueue[truckQueue.count - 1].weight == -1) {
                    break
                }
            }
        }
    }
    
    return spendingTime;
}

print("\(solution(2, 10, [7, 4, 5, 6]))")
print("\(solution(100, 100, [10]))")
print("\(solution(100, 100, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]))")
