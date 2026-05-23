struct Person {
    var name: String
    var age: Int
    var job: String
    var city: String
    
    func introduce() {
        print("My name is \(name), I am \(age) years old, I work as a \(job), and I live in \(city).")
    }
}

var john = Person(name: "John", age: 30, job: "Engineer", city: "London")
print("Hello: \(john.name)")
john.introduce()

//3. How to update value? Update the Age
john.age = 31
john.introduce()
