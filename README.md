# Either
![](https://img.shields.io/badge/platforms-iOS%2011%20%7C%20tvOS%2011%20%7C%20watchOS%205%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/either)
![GitHub](https://img.shields.io/github/license/wltrup/either)

## What

**Either** is a Swift Package Manager package for iOS/tvOS (11.0 and above), watchOS (5.0 and above), and macOS (10.14 and above), under Swift 5.0 and above,  implementing a simple `Either` type, with a few built-in and useful properties and protocol conformances:
```swift
public enum Either<LHS, RHS> {
    
    case lhs(LHS)
    case rhs(RHS)
    
    public var lhs: LHS?
    public var rhs: RHS?
    
}

extension Either: Equatable where LHS: Equatable, RHS: Equatable {}
extension Either: Hashable where LHS: Hashable, RHS: Hashable {}
extension Either: Codable where LHS: Codable, RHS: Codable { /* ... */ }

/// The comparison operator `<` does what one would expect when its operands
/// have values of the same associated type. If the operands have values of
/// different associated types, then the left hand side type, `LHS`, is always
/// considered to be lower than the right hand side type, `RHS`.
extension Either: Comparable where LHS: Comparable, RHS: Comparable { /* ... */ }
```

## Installation

**Either** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**Either** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
