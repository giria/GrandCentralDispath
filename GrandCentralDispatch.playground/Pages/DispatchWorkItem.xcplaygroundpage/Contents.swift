//: [Previous](@previous)
import Foundation
import Dispatch
import PlaygroundSupport

let globalQueue = DispatchQueue.global(qos: .userInitiated)

let workItem = DispatchWorkItem {
    print("I'm a work item")
}

globalQueue.async(execute: workItem)



PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
