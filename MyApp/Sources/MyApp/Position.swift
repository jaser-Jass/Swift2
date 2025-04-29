import Foundation

// Типы должностей
enum Position: CustomStringConvertible {
    case chef, cashier
    
    var description: String {
        switch self {
        case .chef: return "повар"
        case .cashier: return "кассир"
        }
    }
}