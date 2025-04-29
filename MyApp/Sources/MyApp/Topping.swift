import Foundation

enum Topping {
    case cheese, tomatoSauce, mushrooms, ham, pineapple
    
    var description: String {
        switch self {
        case .cheese: return "Сыр"
        case .tomatoSauce: return "Соус"
        case .mushrooms: return "Грибы"
        case .ham: return "Ветчина"
        case .pineapple: return "Ананас"
        }
    }
}