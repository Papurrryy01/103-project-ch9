//
//  StudentModel.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/23/26.
//

class Student {
    var name: String = ""
    var grade: Double = 0.0
    
    init(name: String, grade: Double) {
        self.name = name
        self.grade = grade
    }
}

func studentAverage(students: [Student]) -> Double {
    var total: Double = 0.0
    for student in students {
        total += student.grade
    }
    return total / Double(students.count)
}
