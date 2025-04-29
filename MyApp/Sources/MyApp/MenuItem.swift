import Foundation

// Общий протокол для продуктов меню
protocol MenuItem {
    // Все продукты меню имеют цену
    var price: Double { get set }
}