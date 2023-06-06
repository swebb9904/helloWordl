
// Due Date: Friday May 12th, Start of lecture


// Part 1
// 1. Please provide a real-world example of when you might choose to use a let and one in which you might choose to use a var in an iOS Application
//We use a let to define a constant and a var to define a variable.
// 2. Please add the following two items together and store into a variable of type Float
let x = 10.0
let y = 3.0
let z = Float(x + y)

// 3. Please add the following two variables together and store into a variable of type Int
let first = 10.0
let second: Int? = Int(3.0)
let answer: Int = Int(first) + second!


// Part 2
/*
 Problem Statement:
 We will be practicing the core Object Oriented Programming concepts in the context of Swift.
 */


// Instructions: go through the following 6 mini problems, adding code after the blocks that read // Your code here:
/* Submitting your code:
 Please follow the instructions on the README page under the section "Getting Started with git" in the sub-heading "Submitting Assignments"
 */


// 1. Classes
// Define a class called Vehicle with at least 1  property and 1 method
// Your code here:
class Vehicle {
    func drive() {
        print("I can drive")
    }
}



// 2. Inheritance
// From your Vehicle class above, create a subclass from it. Override at least one of the methods from the Vehicle superclass.
// Your code here:
class motorcycle: Vehicle {
    override func drive() {
        print("I can drive a motorcycle")
    }
}



// 3. Encapsulation
// If this were a separate file from the class definitions above, we could create an instance of your class from Part 2., use it freely but keep the implementation details private from the client user (you in this example).
// To see this in action, please create another subclass of the Vehicle class with at least one private method (e.g. a helper method) that is called from a public method.
// Create an instance of this subclass, and call the aforementioned public method on it. From doing so, you have witnessed encapsulation, because private methods/properties are used behind the scenes without the direct caller having (or getting) to know about it.
// Your code here:
class helicopter: Vehicle {
    private func startIgnition() {
        print("Starting helicopter")
    }
    public func takeOff() {
        startIgnition()
        print("We are flying")
        
    }
    
}
var vehicle1 = helicopter()
vehicle1.takeOff()
// 4. Abstraction
// Create a protocol named Organism with requirements for 2 methods: eat and breath. Then, create a concrete class which conforms to this protocol.
// Now create an instance of your Organism's concrete class but assign it to a variable type-annotated to be an Organism. E.x. let org: Organism = <Your class initializer>
// From this process you have used abstraction, whereby the client (caller) can choose to hide other specific details of the conforming class and only require the interface of the Organism (the abstraction)
// Your code here:

// 5. Compile-time Polymorphism
// In a sample class you create, use compile time polymorphism to "overload" a function, that is create two that are of the exact same name but different parameter lists or return types
// Your code here:



// 6. Runtime Polymorphism
// Create two classes conforming to the Organism protocol from Part 4, each with different implementations of the eat method. In each, make sure you have a different print statement.
// 1) Again, create an instance with type-annotated type Organism (use a var).
// 2) Assign this variable to one of your conforming class instances and call eat on it. Observe the result
// 3) Reassign the Organism variable to an instance of the other conforming class you created, and once again call eat on it.
// Here we can observe two different results with code that reads exactly the same character by charater (org.eat()) -- that is runtime polymorphism in action!
// Your code here:
