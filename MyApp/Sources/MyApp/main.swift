import Foundation

let pizzeria = Pizzeria()

let pizzaMargherita = Pizza(
    type: .margherita,
    doughType: .thin,
    toppings: [.cheese, .tomatoSauce],
    price: 8.99
)

let chefIvanov = Employee(name: "Иванов", salary:  60000, position: .chef)
let cashierSidirov = Employee(name: "Сидоров", salary: 30000, position: .cashier)

let friesMedium = Fries(size: .medium, price: 3.99)

pizzeria.addItem(pizzaMargherita)
pizzeria.addItem(friesMedium)

pizzeria.open()

pizzeria.printAllMenuItems()

let totalPrice: Double = pizzaMargherita.price +  friesMedium.price    // Общая стоимость заказа
let discountAmount: Double = 0.5 // Сумма скидки
let finalPrice = subtract(totalPrice, discountAmount)
let message = serviceMessage(employeeServicing: chefIvanov, employeeBilling: cashierSidirov)
print("Итого к оплате: \\$\(finalPrice)") // Итоговая сумма после вычета скидки
print(message)

pizzeria.close()
