//
//  SIADebugHelper.swift
//  SIACommonTests
//
//  Created by litian on 27/5/19.
//  Copyright © 2019 SIA. All rights reserved.
//
import Foundation

class Timestamp {
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd HH:mm:ss.SSS"
        return formatter
    }()
}

public func SIADEBUG(functionName: String = #function, fileName: String = #file, lineNumber: Int = #line, _ message: Any...) {
    let className = (fileName as NSString).lastPathComponent
    let timestamp = Timestamp().dateFormatter.string(from: Date())
    debugPrint("➡️ \(timestamp) [\(className):\(lineNumber)] [\(functionName)]: ☀️ \(message)")
}

public func SIADEBUG_F(functionName: String = #function, fileName: String = #file, lineNumber: Int = #line, _ message: Any...) {
    #if DEBUG
    let className = (fileName as NSString).lastPathComponent
    let timestamp = Timestamp().dateFormatter.string(from: Date())
    fatalError("➡️  \(timestamp) [\(className):\(lineNumber)] [\(functionName)]: ☀️ \(message)")
    #endif
}

public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
        Swift.print(items[0], separator: separator, terminator: terminator)
    #endif
}

public func debugPrint(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
        Swift.debugPrint(items[0], separator: separator, terminator: terminator)
    #endif
}
