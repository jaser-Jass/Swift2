//1.  Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.

// func calculateDeposit(amount: Double, annualInterestRate: Double, termInYears: Int) -> Double {
//     // Переводим годовую ставку в десятичный вид
//     let interestRateDecimal = annualInterestRate / 100
    
//     // Рассчитываем общий доход
//     let totalInterest = amount * interestRateDecimal * Double(termInYears)
    
//     // Возвращаем итоговую сумму (начальная сумма плюс доход)
//     return amount + totalInterest
// }

// // Пример использования функции
// let depositAmount = 100_000.0   // Сумму вклада
// let annualRate = 7.0            // Годовую процентную ставку
// let term = 3                    // Срок вклада в годах

// let finalAmount = calculateDeposit(amount: depositAmount, annualInterestRate: annualRate, termInYears: term)
// print("Итоговая сумма вклада: ₽\(finalAmount)")


//2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.

// Создание перечисления PizzaType с тремя видами пиццы
enum PizzaType: String {
    case margherita
    case pepperoni
    case quattroFormaggi
}

// Переменные каждой разновидности пиццы
var pizza1: PizzaType = .margherita
var pizza2: PizzaType = .pepperoni
var pizza3: PizzaType = .quattroFormaggi

// Проверка значений
// print(pizza1)  // Выведет: margherita
// print(pizza2)  // Выведет: pepperoni
// print(pizza3)  // Выведет: quattroFormaggi

//3. Добавить возможность получения названия пиццы через rawValue

func getName(pizza: PizzaType) -> String {
  pizza.rawValue
}
print(getName(pizza: .margherita))