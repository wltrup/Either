# Either

## What

**Either** is a Swift Package Manager package for iOS 11.0 and above, tvOS 11.0 and above, watchOS 5.0 and above, macOS 10.14 and above, under Swift 5.0 and above,  implementing a simple `Either` type, with a few built-in and useful protocol conformances:
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
