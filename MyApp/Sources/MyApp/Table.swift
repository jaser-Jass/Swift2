import Foundation

class Table {
    let seatsCount: Int
    weak var restaurant: Pizzeria?
    
    init(seatsCount: Int) {
        self.seatsCount = seatsCount
    }
    
    func canAccommodate(guestsCount: Int) -> Bool {
        return guestsCount <= seatsCount
    }
}