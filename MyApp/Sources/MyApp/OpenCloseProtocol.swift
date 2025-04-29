import Foundation

protocol OpenCloseProtocol {
    func open()
    func close()
}

extension Pizzeria: OpenCloseProtocol {
    func open() {
        print("Пиццерия открыта!")
    }
    
    func close() {
        print("Пиццерия закрыта.")
    }
}
