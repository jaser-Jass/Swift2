import Foundation

enum Size {
    case small, medium, large
    
    var description: String {
        switch self {
        case .small: return "Маленькая порция"
        case .medium: return "Средняя порция"
        case .large: return "Большая порция"
        }
    }
}