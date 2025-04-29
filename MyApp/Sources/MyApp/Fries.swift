import Foundation

// Класс Картошки Фри также соответствует протоколу MenuItem
class Fries: MenuItem {
    var size: Size
    var price: Double
    
    init(size: Size, price: Double) {
        self.size = size
        self.price = price
    }
}