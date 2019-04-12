//
//  Or+Comparable.swift
//  Or
//
//  Created by Roy Dawson on 4/12/19.

import Foundation


extension Or: Comparable where U: Comparable, T: Comparable {
    static func < (lhs: Or<T, U>, rhs: Or<T, U>) -> Bool {
        if let lhs = lhs.value() as T?, let rhs = rhs.value() as T? {
            return lhs < rhs
        } else if let lhs = lhs.value() as U?, let rhs = rhs.value() as U? {
            return lhs < rhs
        } else {
            return false
        }
    }
    static func < (lhs: Or<T, U>, rhs: Or<U, T>) -> Bool {
        return lhs < rhs.swap()
    }
}
