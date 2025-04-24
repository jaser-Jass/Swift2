//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum PizzaType {
    case margherita
    case pepperoni
    case hawaiian
    case veggie
    case meatLovers
}

//2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

enum Topping {    //Добавки
    case pepperoni
    case tomatoes
    case cheese
    case mushrooms
    case olives
}


enum DoughType {   //Тесто
    case thin
    case thick
}

struct Pizza {    //Структура пиццы
    let type: PizzaType
    let doughType: DoughType
    let toppings: [Topping]
    let price: Double
}
 //3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.

 class Pizzeria {
    private var pizzas: [Pizza]
    
    init(initialPizzas: [Pizza]) {
        self.pizzas = initialPizzas
    }
    
    func addPizza(_ pizza: Pizza) {
        pizzas.append(pizza)
    }
    
    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
        
    func printAllPizzas() {
        for pizza in pizzas {
            let toppingsList = pizza.toppings.map { String(describing: $0).split(separator: ".").last ?? "" }
            print("\(pizza.type) - Price: $\(pizza.price), Dough: \(pizza.doughType), Toppings: \(toppingsList)")
        }
    }
}
// Создаем несколько пицц
let margheritaPizza = Pizza(type: .margherita, doughType: .thin, toppings: [.cheese, .tomatoes], price: 9.99)
let pepperoniPizza = Pizza(type: .pepperoni, doughType: .thick, toppings: [.pepperoni, .cheese, .olives], price: 12.99)

// Создаем экземпляр пиццерии и добавляем пиццы
let myPizzeria = Pizzeria(initialPizzas: [margheritaPizza, pepperoniPizza])

// Добавляем еще одну пиццу
let hawaiianPizza = Pizza(type: .hawaiian, doughType: .thin, toppings: [.cheese, .tomatoes], price: 11.99)
myPizzeria.addPizza(hawaiianPizza)


myPizzeria.printAllPizzas()



