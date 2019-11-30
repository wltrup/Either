import Foundation

public enum Either<LHS, RHS> {
    
    case lhs(LHS)
    case rhs(RHS)
    
    public var lhs: LHS? {
        switch self {
        case let .lhs(lhsValue):
            return lhsValue
        case .rhs:
            return nil
        }
    }
    
    public var rhs: RHS? {
        switch self {
        case .lhs:
            return nil
        case let .rhs(rhsValue):
            return rhsValue
        }
    }
    
}

extension Either: Equatable where LHS: Equatable, RHS: Equatable {}
extension Either: Hashable where LHS: Hashable, RHS: Hashable {}

extension Either: Codable where LHS: Codable, RHS: Codable {

    enum CodingKeys: CodingKey {
        case lhs
        case rhs
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .lhs(let value):
            try container.encode(value, forKey: .lhs)
        case .rhs(let value):
            try container.encode(value, forKey: .rhs)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            let lhsValue =  try container.decode(LHS.self, forKey: .lhs)
            self = .lhs(lhsValue)
        } catch {
            let rhsValue =  try container.decode(RHS.self, forKey: .rhs)
            self = .rhs(rhsValue)
        }
    }

}

extension Either: Comparable where LHS: Comparable, RHS: Comparable {
    
    public static func < (a: Either, b: Either) -> Bool {
        switch (a, b) {
        case let (.lhs(lhs1), .lhs(lhs2)):
            return lhs1 < lhs2
        case (.lhs, .rhs):
            return true
        case (.rhs, .lhs):
            return false
        case let (.rhs(rhs1), .rhs(rhs2)):
            return rhs1 < rhs2
        }
    }
    
}
