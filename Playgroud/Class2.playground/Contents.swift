import UIKit

var greeting = "Hello, playground"

// Basic funcion
func sayHello() {
    
    print("Hello")
    
}

sayHello()

// Function with parameters
func sayHelloTo(_ name:String,_ age:Int) {
    
    print("Hello \(name), you are \(age) years old.") // String interpolation (best method for this purpose)
    print("Hello " + name + ", you are " + String(age) + " years old." ) // String concatenation
    
}

sayHelloTo("Tom", 21) // Implicit call

func addFour(number:Int) -> Int{
    return number + 4
}

print(addFour(number: 20))
