//
//  StudentsListView.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/23/26.
//

import SwiftUI

struct StudentsListView: View {
    
    @State private var students: [Student] = [
        Student(name: "Alice", grade: 95),
        Student(name: "Bob", grade: 88),
        Student(name: "Charlie", grade: 76),
    ]
    @State private var newStudentName: String = ""
    @State private var newStudentGrade: String = ""
    
    var body: some View {
        List(students.indices, id: \.self) { index in
            let student = students[index]
            HStack {
                Text(student.name)
                Spacer()
                Text("\(student.grade, specifier: "%.2f")")
            }
            
        }
        HStack {
            TextField("Name", text: $newStudentName)
                .padding()
            TextField("Grade", text: $newStudentGrade)
                .padding()
            Button("Add Student"){
                //CodeLogic
                
                guard let gradeValue = Double(newStudentGrade) else {
                    return
                }
                
                let newStudent = Student(name: newStudentName, grade: gradeValue)
                
                students.append(newStudent)
                newStudentName = ""
                newStudentGrade = ""
                
            }
        }
        .padding(10)
    }
}



#Preview {
    StudentsListView()
}
