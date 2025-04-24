//1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
// Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
import Foundation

// //Словарь цен
// let prices: [String: Int] = [
//     "Зелёный": 10,
//     "Черный": 15,
//     "Улун": 20,
//     "Эрл Грей": 25
// ]

// //Словарь заказов
// var queueOfOrders: [[String: Int]] = [
//     ["Зелёный": 2, "Черный": 1],
//     ["Черный": 1],
//     ["Улун": 1, "Эрл Грей": 1]
// ]
// //Функция для подсчета итоговой суммы в заказе
// func calculateOrderTotal(order: [String: Int]) -> Int {
//     var total = 0
    
//     for (item, quantity) in order {
//         if let price = prices[item] { 
//             total += price * quantity
//         }
//     }
    
//     return total
// }

// // Перебираем заказы и выводим состав и стоимость каждого
// for (index, order) in queueOfOrders.enumerated() {
//     print("Заказ №\(index + 1)")
//     print("Состав:")
//     for (item, quantity) in order {
//         print("\(item): \(quantity)")
//     }
//     let totalCost = calculateOrderTotal(order: order)
//     print("Общая сумма: \(totalCost) руб.")
//     print()
// }
// print("Дата: \(Date())")



//2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil].
// Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.

// var numbers: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]

// // Фильтруем массив, исключая nil, 0 и 4
// let newNumbers = numbers.filter { value in
//     guard let unwrappedValue = value else { return false }
//     return unwrappedValue != 0 && unwrappedValue != 4
// }

// print(newNumbers.compactMap { $0 })


//3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

func createArray(number: Int) -> [Int] {
    return (0..<number).map { index in
        return 1 << index // битовый сдвиг эквивалентен возведению в степень двойки
    }
}

let myArray = createArray(number: 10)
print(myArray)