import UIKit

//Create
var firstArray: [String] = ["Banana", "Apple", "Orange"]
var firstSet: Set<String> = ["Banana", "Apple", "Orange"]
var firstDisctionary: [String:String] = [
        "Yellow": "Banana",
        "Red": "Apple",
        "Orange" : "Orange"
]

print ("Original Array: \(firstArray)")
print ("Original Set \(firstSet)")
print ("Original Dictionary: \(firstDisctionary)")


// Add elements

// Array -> append
firstArray.append("Mango")
print ("Array after adding Mango: \(firstArray)")
//Set -> insert
firstSet.insert("Pineapple")
print ("Set after adding Pineapple: \(firstSet)")
//Dictionary -> Assign new key value
firstDisctionary.updateValue("Blueberry", forKey: "Blue")
print ("Dictionary after adding Pineapple: \(firstDisctionary)")


// Remove elements

//Array
firstArray.remove(at: 0)

//Set
firstSet.remove("Orange")

//Dictionary
firstDisctionary.removeValue(forKey: "Blue")

print ("Array \(firstArray)")
print ("Set \(firstSet)")
print ("Dictionary\(firstDisctionary)")


// Search or Check element

//Array
print ("Array contains Banana? \(firstArray.contains("Banana"))")


//Set
print ("Set contains Orange? \(firstSet.contains("Orange"))")

//Disctionary
print ("Disctionary contains Blue? \(firstDisctionary.keys.contains("Blue"))")



// How to Iterate/Loop
//rint(firstArray)
for value in firstArray{
    print (value)
}

//print(firstSet)
for value in firstSet{
    print (value)
}
//print(firstDisctionary)
for value in firstDisctionary{
    print (value)
}
for (key,value) in firstDisctionary {
    print ("\(key)")
}



// SORTING //

print(firstArray.sorted(by: >))
print(firstSet.sorted(by: >))
print(firstDisctionary.sorted(by: { $0.value < $1.value }))

let sortedByKey = firstDisctionary.sorted(using: { $0.key < $1.key })
print ("Sorted Disctionary by Key \(sortedByKey)")
