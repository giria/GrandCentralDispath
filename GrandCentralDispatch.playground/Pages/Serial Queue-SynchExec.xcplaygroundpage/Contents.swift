//: [Previous](@previous)

import Foundation
import Dispatch
import PlaygroundSupport

let serialQueue = DispatchQueue(label: "com.a.serial")

print("Serial queue, synchronous execution")
//: [Next](@next)


for i in 1...5 {
    print(" Starting Task \(i)")
    serialQueue.sync {
        trace(task: i)
    }
}

func trace(task:Int) {
    print(" Task \(task) started")
    sleep(UInt32.random(in: 0...4))
    print("Task \(task) completed")
}

PlaygroundPage.current.needsIndefiniteExecution = true
