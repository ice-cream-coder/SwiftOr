//
//  Or.swift
//  Or
//
//  Created by Roy Dawson on 4/5/19.

import Foundation

struct Or<T, U> {
    private let _value: Any
    func value() -> T? {
        return _value as? T
    }
    
    func value() -> U? {
        return _value as? U
    }
    
    init(_ value: T) {
        self._value = value
    }
    
    init(_ value: U) {
        self._value = value
    }
    
    func swap() -> Or<U,T> {
        if let value = self.value() as T? {
            return Or<U,T>.init(value)
        } else if let value = self.value() as U? {
            return Or<U, T>.init(value)
        }
        fatalError()
    }
}
