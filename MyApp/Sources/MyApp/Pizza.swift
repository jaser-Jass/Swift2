import Foundation

class Pizza: MenuItem {
    var type: PizzaType
    var doughType: DoughType
    var toppings: [Topping]
    var price: Double
    
    init(type: PizzaType, doughType: DoughType, toppings: [Topping], price: Double) {
        self.type = type
        self.doughType = doughType
        self.toppings = toppings
        self.price = price
    }
}