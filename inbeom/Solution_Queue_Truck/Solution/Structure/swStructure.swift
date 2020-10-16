//
//  swStructure.swift
//  Solution
//
//  Created by INBEOM on 2020/07/15.
//  Copyright © 2020 ibp. All rights reserved.
//

import Foundation


public struct Stack<T> {
    private var elements = Array<T>()
    public init() {}

    public mutating func pop() -> T? {
        return self.elements.popLast()
    }

    public mutating func push(element: T) {
        self.elements.append(element)
    }

    public func peek() -> T? {
        return self.elements.last
    }

    public var isEmpty: Bool {
        return self.elements.isEmpty
    }

    public var count: Int {
        return self.elements.count
    }
}



public struct Queue<T> {

      internal var data = Array<T>()

      public init() {}

    public mutating func changequeue(index : Int ,element: T) {
        data[index] = element
    }

      public mutating func dequeue() -> T? {
          return data.removeFirst()
      }

    public func peekIndex(index : Int) -> T? {
        if(data.count > index){
            return data[index]
        }
        else{
            return ([] as! T)
        }

    }

      public func peek() -> T? {
          return data.first
      }


      public mutating func enqueue(element: T) {
          data.append(element)
      }

      public mutating func clear() {
          data.removeAll()
      }

      public var count: Int {
          return data.count
      }

      public var capacity: Int {
          get {
              return data.capacity
          }
          set {
              data.reserveCapacity(newValue)
          }
      }

      public func isFull() -> Bool {
          return count == data.capacity
      }

      public func isEmpty() -> Bool {
          return data.isEmpty
      }
}
