import UIKit

class Student {
    var name: String
    var age: Int
    var grades: [Int]

    init(name: String, age: Int, grades: [Int]) {
        self.name = name
        self.age = age
        self.grades = grades
    }
}

let student1 = Student(name: "Carlos", age: 20, grades: [80, 90, 70])
let student2 = Student(name: "Eric", age: 35, grades: [34, 75, 100])
let student3 = Student(name: "Kofi", age: 28, grades: [90, 80, 70])

let students = [student1, student2, student3]

for student in students {

    let average = Double(student.grades.reduce(0, +)) / Double(student.grades.count)
    print ("\(student.name)`s : average \(average)")
    if average >= 60 {
        print("Student \(student.name) is passing.")
    } else {
        print("Student \(student.name) needs to retake the exam.")
    }
}
