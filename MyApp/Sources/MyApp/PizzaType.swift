import Foundation

enum PizzaType {
    case margherita, pepperoni, hawaiian
    
    var description: String {
        switch self {
        case .margherita: return "Маргарита"
        case .pepperoni: return "Пепперони"
        case .hawaiian: return "Гавайская"
        }
    }
}