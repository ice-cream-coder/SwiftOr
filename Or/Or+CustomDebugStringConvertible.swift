//
//  Or+CustomDebugStringConvertible.swift
//  Or
//
//  Created by Roy Dawson on 4/12/19.

import Foundation

extension Or: CustomDebugStringConvertible {
    var debugDescription: String {
        if let t = self.value() as T? {
            return "\(t)"
        } else if let u = self.value() as U? {
            return "\(u)"
        }
        fatalError()
    }
}
