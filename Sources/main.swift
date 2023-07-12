// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import DotEnv

print("Hello, world!")

print()

var env = try DotEnv.read(path: ".env")
print(env.lines) // [Line] (key=value pairs)
env.load()
print(ProcessInfo.processInfo.environment["PACKAGE_NAME"] as Any) // BAR
