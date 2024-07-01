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
    
    static func createCar(brand: String, model: String, year: Int, speed: Int) -> Car {
        return Car(brand: brand, model: model, year: year, speed: speed)
    }
    
    func race(car2: Car) -> Car {
        if self.speed > car2.speed {
            return self
        } else if self.speed < car2.speed {
            return car2
        } else {
            return Car(brand: "None", model: "None", year: 0, speed: 0) // Indicating a draw
        }
    }

    static func organizeRaces(cars: [Car]) {
        if cars.count % 2 != 0 {
            print("Need an even number of cars to race.")
            return
        }
        
        var raceCars = cars.shuffled() // Shuffle cars to create random pairs
        var winners: [Car] = []
        
        while raceCars.count > 1 {
            for i in stride(from: 0, to: raceCars.count, by: 2) {
                let car1 = raceCars[i]
                let car2 = raceCars[i + 1]
                let winner = car1.race(car2: car2)
                
                if winner.brand == "None" {
                    print("Draw between \(car1.brand) \(car1.model) and \(car2.brand) \(car2.model)")
                } else {
                    print("Winner between \(car1.brand) \(car1.model) and \(car2.brand) \(car2.model): \(winner.brand) \(winner.model)")
                    winners.append(winner)
                }
            }
            raceCars = winners
            winners = []
        }
        
        if let finalWinner = raceCars.first {
            if finalWinner.brand != "None" {
                print("Final Winner: \(finalWinner.brand) \(finalWinner.model)")
            } else {
                print("No final winner, all races were draws.")
            }
        }
    }
}

class BMW: Car {
    var enginePower: Int
    
    init(model: String, year: Int, speed: Int, enginePower: Int) {
        self.enginePower = enginePower
        super.init(brand: "BMW", model: model, year: year, speed: speed)
    }
    
    override func printInfo() {
        super.printInfo()
        print("Engine Power - \(enginePower)")
    }
}

class Audi: Car {
    var numOfSeats: Int
    
    init(model: String, year: Int, speed: Int, numOfSeats: Int) {
        self.numOfSeats = numOfSeats
        super.init(brand: "Audi", model: model, year: year, speed: speed)
    }
    
    override func printInfo() {
        super.printInfo()
        print("Number of seats - \(numOfSeats)")
    }
}

class Toyota: Car {
    var fuelTankVol: Int
    
    init(model: String, year: Int, speed: Int, fuelTankVol: Int) {
        self.fuelTankVol = fuelTankVol
        super.init(brand: "Toyota", model: model, year: year, speed: speed)
    }
}

class AstonMartin: Car {
    var driveUnit: String
    
    init(model: String, year: Int, speed: Int, driveUnit: String) {
        self.driveUnit = driveUnit
        super.init(brand: "Aston Martin", model: model, year: year, speed: speed)
    }
}

// Создаем автомобили
let bmw1 = BMW(model: "X5 M50d", year: 2018, speed: 250, enginePower: 400)
let bmw2 = BMW(model: "X3 30d", year: 2017, speed: 240, enginePower: 265)
let audi1 = Audi(model: "RS6 C7", year: 2018, speed: 260, numOfSeats: 5)
let audi2 = Audi(model: "RS7 C8", year: 2019, speed: 305, numOfSeats: 5)
let toyota1 = Toyota(model: "Camry 3.5", year: 2017, speed: 220, fuelTankVol: 60)
let toyota2 = Toyota(model: "Supra", year: 2020, speed: 280, fuelTankVol: 50)
let astonMartin1 = AstonMartin(model: "V8 Vantage", year: 2017, speed: 314, driveUnit: "Rear drive")
let astonMartin2 = AstonMartin(model: "DB11", year: 2019, speed: 322, driveUnit: "Rear drive")

// Список всех автомобилей
var cars: [Car] = [bmw1, bmw2, audi1, audi2, toyota1, toyota2, astonMartin1, astonMartin2]

// Проведение гонок
Car.organizeRaces(cars: cars)
