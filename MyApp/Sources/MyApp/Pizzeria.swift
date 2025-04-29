import Foundation

// Класс Pizzeria теперь хранит только объекты, соответствующие протоколу MenuItem
class Pizzeria {
    private var menuItems: [MenuItem]
    var employees: [Employee]
    var tables: [Table]
    
    // Конструктор без аргументов
    init() {
        self.menuItems = []           // Инициализация пустого списка меню
        self.employees = []          // Инициализация пустого списка сотрудников
        self.tables = []              // Инициализация пустого списка столиков
    }
    
    // Конструктор с передачей сотрудников
    init(employees: [Employee]) {
        self.menuItems = []           // Инициализация пустого списка меню
        self.employees = employees    // Присваивание передаваемых сотрудников
        
        // Создаем набор стандартных столиков прямо в конструкторе
        self.tables = [
            Table(seatsCount: 2),
            Table(seatsCount: 4),
            Table(seatsCount: 6),
            Table(seatsCount: 8)
        ]
        
        // Привязываем столики к текущей пиццерии
        for table in tables {
            table.restaurant = self
        }
    }
    
    func addItem(_ item: MenuItem) {
        menuItems.append(item)
    }
    
    func getAllMenuItems() -> [MenuItem] {
        return menuItems
    }
    
    func printAllMenuItems() {
        for item in menuItems {
            if let pizza = item as? Pizza {
                let toppingsList = pizza.toppings.map { $0.description }.joined(separator: ", ")
                print("Пицца: \(pizza.type.description) - Цена: $\(pizza.price), Тесто: \(pizza.doughType.description), Ингредиенты: \(toppingsList)")
            } else if let fries = item as? Fries {
                print("Картофель фри: Размер — \(fries.size.description), Цена — $\(fries.price)")
            }
        }
    }
}