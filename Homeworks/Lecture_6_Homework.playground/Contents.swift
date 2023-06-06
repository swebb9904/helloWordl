


// This assignment will walk us through the usage of custom types in Swift



/*
1. Create a Class that represents a car with at least 2 properties and 1 instance method

 */

//Your code here:
class car {
    
    func drive() {
        print("I am driving")
    }
    
    func unlock() {
        print("I am unlocking the door")
    }
    
}







/*
 2. Create a Class that subclasses from the above Car class called Truck. Provide at least 1 more property and 1 more instance method

 */

// Your Code here:
class truck: car {
    func numberOf() {
        print("There are 4 truck left in the lot")
    }
    func truck() -> String {
        " this vehicle is \(car())"
    }
}






/*
 3. Create a Protocol called Vehicle with a function drive
 
 
 */

// Your Code here:
protocol Vehicle {
    
    func drive(drive1: String)
    
        
    }
        
      

        
    





/*
 4. Add an extension to the car class Car class to provide protocol conformance to the Vehicle protocol
 
 
 */
// Your code here:
protocol vehicle2 {
    func drive()
}

class Car2 {
    let brand: String = ""
    var doorCount: Int = 0
    
    func remodel() {
        doorCount = doorCount + 1
        print("I added a door")
    }
    
    func move() {
        print("Move")
    }
}

extension Car: Vehicle {
    func drive() {
        print("drive")
    }
}






/*
 
 5. Create a Struct Boat that conforms to the Vehicle protocol as well
 */
// Your code here:
struct Boat: Vehicle {
    func drive() {
        print("Drive")
    }
}


/*
 6. Create an enum called VehicleClass that specifies 2 vehicle types, car and boat, each with an associated value of type Vehicle. Give the car type an associated value of a Car (from above), and the boat type an associated value of a Boat (from above)
 */
// Your code here:

enum Directions {
    case north
    case south
    case east
    case west
}

let path = Directions.south

enum Activity {
    case doingNothing
    case watchingTv(show: String)
    case doingHomework(className: String)
}




/*
 7. Define a variable of the enum type VehicleType. Use a switch statement to take in this vehicle variable and call the Vehicle protocol method drive(). Test this with a car enum value input and a boat enum value input
 */

// Your code here:

enum VehicleClass {
    case car(car: Vehicle)
    case boat(boat: Vehicle)
}

let vehicleCar = VehicleClass.car(car: car())
let vehicleBoat = VehicleClass.boat(boat: boat())

let vehicle = vehicleBoat

switch vehicle {
    
case .car(car: vehicleCar):
    print(car.drive())
    
case . boat(boat: vehicleBoat):
    print(boat.drive())
}


// 8a. Create a Protocol automobile with at least 1 method


protocol autoMobile {
    var autoMobile: String
}






// 8b. Create a Protocol Car with with at least 1 property and 2 methods









// 9. Creat a class Truck that conforms to both Car and Automobile









// 10a. Create a class Boat with at least 1 property and 1 function NOT defined in the automobile protocol










// 10b. Extend the class Boat to conform to the automobile protocol

