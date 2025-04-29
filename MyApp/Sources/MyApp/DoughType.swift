import Foundation

enum DoughType {
    case thin, thick
    
    var description: String {
        switch self {
        case .thin: return "Тонкое тесто"
        case .thick: return "Толстое тесто"
        }
    }
}
