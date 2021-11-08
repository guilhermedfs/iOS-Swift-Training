class Vehicle {
    func info() {
        print("Vehicle")
    }
}

class Truck: Vehicle {
    override func info() {
        print("Truck")
    }
}

let aTruck = Truck()
if let aVehicle = aTruck as? Vehicle {
    aVehicle.info()
}
