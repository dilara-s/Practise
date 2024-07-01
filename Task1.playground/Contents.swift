import UIKit

class Car {
    var brand: String
    var model: String
    var year: Int
    var speed: Int
    
    init(brand: String, model: String, year: Int, speed: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self.speed = speed
    }
    
    func printInfo() {
        print("Brand - \(brand), Model - \(model), Year - \(year), Speed - \(speed)")
    }
    
    static func createCar(brand: String, model: String, year: Int, speed: Int) -> Car{
        return Car(brand: brand, model: model, year: year, speed: speed)
    }
    
    func race(car2: Car) -> Car {
        if (self.speed > car2.speed) {
            return self
        } else if (self.speed < car2.speed) {
            return car2
        }
        return Car(brand: "None", model: "None", year: 0, speed: 0)
    }
    
    static func raceCars (cars: [Car]) {
        for i in 0..<cars.count {
            for j in (i+1)..<cars.count {
                let car1 = cars[i]
                let car2 = cars[j]
                let winner = car1.race(car2: car2)
                if winner.brand == "None" {
                    print("Ничья между \(car1.brand) \(car1.model) и \(car2.brand) \(car1.model)")
                } else {
                    print("Победитель между \(car1.brand) \(car1.model) и \(car2.brand) \(car2.model): \(winner.brand) \(winner.model)")
                }
            }
        }
        var finalWinner: Car = Car(brand: "None", model: "None", year: 0, speed: 0)
        for car in cars {
            finalWinner = finalWinner.race(car2: car)
        }
        print("Итоговый победитель: \(finalWinner.brand) \(finalWinner.model)")
    }
    
    
}

class BMW: Car{
    var enginePower: Int
    
    init(brand: String, model: String, year: Int, speed: Int, enginePower: Int) {
            self.enginePower = enginePower
            super.init(brand: brand, model: model, year: year, speed: speed)
        }
}

class Audi: Car {
    var numOfSeats: Int
    
    init(brand: String, model: String, year: Int, speed: Int, numOfSeats: Int) {
        self.numOfSeats = numOfSeats
        super.init(brand: brand, model: model, year: year, speed: speed)
    }
}

let bmw1 = BMW(brand: "BMW", model: "X5 M50d", year: 2018, speed: 250, enginePower: 400)
let bmw2 = BMW(brand: "BMW", model: "X3 30d", year: 2017, speed: 240, enginePower: 265)
let audi1 = Audi(brand: "Audi", model: "RS6 C7", year: 2018, speed: 260, numOfSeats: 5)
let audi2 = Audi(brand: "Audi", model: "RS7 C8", year: 2019, speed: 305, numOfSeats: 5)
let audi3 = Audi(brand: "Audi", model: "A4", year: 2001, speed: 187, numOfSeats: 5)
let car6 = Car(brand: "Toyota", model: "Camry 3.5", year: 2017, speed: 220)
var cars: [Car] = [bmw1, bmw2, audi1, audi2, audi3, car6]

Car.raceCars(cars: cars)

