import Foundation

// Вспомогательная функция для вычитания чисел
public func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}

// Функция формирования уведомления
func serviceMessage(employeeServicing: Employee, employeeBilling: Employee) -> String {
    return """
    Вас обслуживает \(employeeServicing.position.description) \(employeeServicing.name).\n\
    кассир — \(employeeBilling.name).
    """
}