


// This assignment will walk us through the usage of custom types in Swift


/*
1. Create a Class that represents a car with at least 2 properties and 1 instance method
  */

//Your code here:

class Car {
    let make: String? = nil
    let model: String? = nil
    
    func turnLeft() {
        print("turn wheels left")
    }
}





/*
 2. Create a Class that subclasses from the above Car class called Truck. Provide at least 1 more property and 1 more instance method
 
 */

// Your Code here:

class Truck: Car {
    // Square footage of the bed
    let bedSize: Double? = nil
    
    func tow() {
        print("Towing a trailer")
    }
}




/*
 3. Create a Protocol called Vehicle with a function drive
 
 */

// Your Code here:
protocol Vehicle {
    func drive()
}


/*
 4. Add an extension to the car class Car class to provide protocol conformance to the Vehicle protocol
 
 
 */
// Your code here:

extension Car: Vehicle {
    func drive() {
        print("using wheels to drive")
    }
}



/*
 
 5. Create a Struct Boat that conforms to the Vehicle protocol as well
 */
// Your code here:

struct Boat: Vehicle {
    func drive() {
        print("using boat engine to drive")
    }
}


/*
 6. Create an enum called VehicleType that specifies 2 vehicle types, car and boat, each with an associated value of type Vehicle.
 */
// Your code here:

enum VehicleType {
    case car(car: Vehicle)
    case boat(boat: Vehicle)
}



/*
 7. BONUS - Define a variable of the enum type VehicleType. Use a switch statement to take in this vehicle variable and call the Vehicle protocol method drive(). Test this with a car enum value input and a boat enum value input, each with associated values from the Car and Boat objects you created above.
 */

// Your code here:
let car = VehicleType.car(car: Car())
let boat = VehicleType.boat(boat: Boat())

let vehicle = car

switch vehicle {
case let .car(car: car):
    print(car.drive())
case let .boat(boat: boat):
    print(boat.drive())
}




// 8a. Create a Protocol Automobile with at least 1 method


protocol Automobile {
    func steerTheWheel()
}







// 8b. Create a Protocol Car with with at least 1 property and 2 methods



protocol CarProtocol {
    var numWheels: Int { get }
    func drive()
}





// 9. Creat a class Truck that conforms to both Car and Automobile



class TruckClass: Automobile, CarProtocol {
    func steerTheWheel() {
        print("steering")
    }
    
    var numWheels: Int = 4
    
    func drive() {
        print("driving")
    }

}





// 10a. Create a class Boat with at least 1 property and 1 function NOT defined in the automobile protocol



class BoatClass {
    func float() {
        print("floating")
    }
}




// 10b. Extend the class Boat to conform to the automobile protocol

extension BoatClass: Automobile {
    
    func steerTheWheel() {
        print("steering boat wheel")
    }
    
}
