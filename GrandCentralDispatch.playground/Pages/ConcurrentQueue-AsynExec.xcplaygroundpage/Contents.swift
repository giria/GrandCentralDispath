import UIKit

import Foundation
import Dispatch
import PlaygroundSupport


let globalQueue = DispatchQueue.global(qos: .userInitiated)

func trace(task:Int) {
    print(" Task \(task) started")
    sleep(UInt32.random(in: 0...4))
    print("Task \(task) completed")
}

for i in 1...5 {
    print(" Starting Task \(i)")
    globalQueue.async {
        trace(task: i)
    }
}


PlaygroundPage.current.needsIndefiniteExecution = true
