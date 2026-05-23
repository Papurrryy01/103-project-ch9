import UIKit

//Array to store the names
var studentNames: [String] = ["Alice", "Bob", "Charlie", "David", "Eve"]
//Dictionary to store each student’s grade
var studentGrades: [String: [Int]] = ["Alice": [88, 92, 76], "Bob": [75, 80, 85], "Charlie": [90, 95, 88], "David": [82, 87, 91], "Eve": [78, 84, 89]]
var highestAverage = Double()
var highestAveragestudent: String = ""
//summary of each student’s grades, including average grade.
print("Student Grades:")
for (name, grades) in studentGrades {
    let average = Double(grades.reduce(0, +)) / Double(grades.count)
        print("\(name): \(grades), Average: \(average)")
    if average > highestAverage {
        highestAverage = average
        highestAveragestudent = name
    }
}
