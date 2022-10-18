//: [Previous](@previous)

import Foundation
import Dispatch
import PlaygroundSupport


let globalQueue = DispatchQueue.global(qos: .userInitiated)

func trace(task:Int) {
    print(" Task \(task) started")
    sleep(UInt32.random(in: 0...4))
    print("Task completed")
}

trace(task:4)

for i in 1...5 {
    print(" Starting Task \(i)")
    globalQueue.sync {
        trace(task: i)
    }
}


PlaygroundPage.current.needsIndefiniteExecution = true

//: [Next](@next)
