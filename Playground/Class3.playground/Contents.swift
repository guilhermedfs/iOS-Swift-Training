import UIKit

// Class Spaceship
class Spaceship {
    
    var fuelLevel = 100
    var name = ""
    
    func cruise (){
        
        print(fuelLevel)
        print("Cruizing is initiated for \(name)")
        
    }
    
    func thrust(){
        
        print(fuelLevel)
        print("Rockets thrusters are initiated for \(name)")

    }
}

var myShip = Spaceship()
myShip.name = "Tom"
myShip.cruise()
