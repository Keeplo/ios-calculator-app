//
//  Queue.swift
//  Calculator
//
//  Created by Marco, Charlotte on 2021/06/24.
//

import Foundation

struct Queue<T> {
    private var queue = Array<T>()
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    mutating func enqueue(_ value: T) {
        queue.append(value)
    }
    mutating func dequeue() -> T? {
        return queue.isEmpty ? nil : queue.removeFirst()
    }
    mutating func enqueueInFront(_ value: T) {
        queue.insert(value, at: 0)
    }
}
