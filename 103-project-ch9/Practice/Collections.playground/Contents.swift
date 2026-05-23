import UIKit

print("""
---Array---
1.Ordered collection
2.Each item has a position/index
3. Supports duplicated items \n
""")


// Define an array
var gradesArray : [Int] = [100, 65, 78]
print("This is an Array \(gradesArray).")


print("""
    --- Set ---
    1. Unordered collection
    2. Items dont have index or position
    3. Duplicate items are not allowed \n
    """)

// Define a Set
var gradeSet: Set<Int> = [100,65,78]
print ("This is a set : \(gradeSet). \n")


// Dictionary carateristics
print("""
1. Unordered
2. Key must be unique, but values can be duplicate
3. key-Value pairs
""")

var gradesDisctionary: [String:Int] =
["Math":100,"History":65,"Science":78]


print("This is a Dictionary: \(gradesDisctionary). \n")




//1.
var studentRegistration : [String] = ["Carlos", "Jon", "Mike"]
print("This is an Array \(studentRegistration).")

//2.
var studentId: Set<Int> = [78643,82734,98734,98734]
print ("This is a set : \(studentId). \n")

//3.
var studentDetails: [String:Int] =
["Carlos":78643,"Jon":82734,"Mike":98734]

print("This is a Dictionary: \(studentDetails). \n")

//4.
var courseSemester : [String] = ["Football", "Baseball", "Football"]
print("This is an Array \(courseSemester).")



