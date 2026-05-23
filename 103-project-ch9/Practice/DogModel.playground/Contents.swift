import UIKit

class Dog {
    var name: String
    var breed: String
    var age: Double
    
    init(name: String, breed: String, age: Int) {
        self.name = name
        self.breed = breed
        self.age = Double(age)
    }
}

let dog1 = Dog(name: "Miller", breed: "English Bulldog", age: Int(1.5))
let dog2 = Dog(name: "Hunter", breed: "Husky", age: 4)
let dog3 = Dog(name: "Brook", breed: "Mixed", age: 3)


let number: [Int] = [1,2,3,4]

let dogs: [Dog] = [
    Dog(name: "Miller", breed: "English Bulldog", age: Int(1.5)),
    Dog(name: "Hunter", breed: "Husky", age: 4),
    Dog(name: "Brook", breed: "Mixed", age: 3)
]
print(dogs[1].age)

var total = 0

for dog in dogs {
    total += Int(dog.age)
}

let average = total/dogs.count
print(average)
