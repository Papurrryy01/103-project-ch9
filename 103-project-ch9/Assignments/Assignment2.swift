//
//  Assignment2.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/23/26.
//

import SwiftUI

struct Assignment2: View {
    
    @State private var students: [String] = ["Alice - 95", "Bob - 88"]
    @State private var studentName: String = ""
    @State private var grade: String = ""
    
    var averageGrade: Double {
        var total = 0.0
        
        for student in students {
            let parts = student.components(separatedBy: " - ")
            
            if let gradeNumber = Double(parts.last ?? "") {
                total += gradeNumber
            }
        }
        
        return students.isEmpty ? 0 : total / Double(students.count)
    }
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Text("Student Grades")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                
                Text("Average Grade: \(averageGrade, specifier: "%.1f")")
                    .font(.headline)
                    .foregroundStyle(.gray)
                
                List(students, id: \.self) { student in
                    Text(student)
                }
                
                HStack {
                    TextField("Student Name", text: $studentName)
                        .padding()
                        .submitLabel(.done)
                    
                    TextField("Grade", text: $grade)
                        .padding()
                        .keyboardType(.numberPad)
                    
                    Button {
                        addStudent()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }
                }
                
            }
            .navigationTitle(Text("GradeBook"))
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                Menu {
                    Button("Sort Lowest to Highest") {
                        students.sort {
                            getGrade(from: $0) < getGrade(from: $1)
                        }
                    }
                    
                    Button("Sort Highest to Lowest") {
                        students.sort {
                            getGrade(from: $0) > getGrade(from: $1)
                        }
                    }
                    
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                }
            }
        }
    }
    
    func addStudent() {
        
        let trimmedName = studentName.trimmingCharacters(in: .whitespacesAndNewlines)
        let trimmedGrade = grade.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedName.isEmpty else { return }
        guard let gradeNumber = Double(trimmedGrade) else { return }
        
        students.append("\(trimmedName) - \(Int(gradeNumber))")
        
        studentName = ""
        grade = ""
    }
    
    func getGrade(from student: String) -> Double {
        let parts = student.components(separatedBy: " - ")
        return Double(parts.last ?? "") ?? 0
    }
}

#Preview {
    Assignment2()
}
