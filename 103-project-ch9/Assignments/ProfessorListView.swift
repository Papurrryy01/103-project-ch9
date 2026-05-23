//
//  ProfessorListView.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/23/26.
//

import SwiftUI

class Professor {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }
}

struct ProfessorsListView: View {
    
    @State private var professors: [Professor] = [
        Professor(firstName: "John", lastName: "Smith", phoneNumber: "555-1234"),
        Professor(firstName: "Maria", lastName: "Garcia", phoneNumber: "555-5678")
    ]
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        VStack {
            List(professors.indices, id: \.self) { index in
                let professor = professors[index]
                
                VStack(alignment: .leading) {
                    Text("\(professor.firstName) \(professor.lastName)")
                        .font(.headline)
                    
                    Text(professor.phoneNumber)
                        .font(.subheadline)
                }
            }
            
            TextField("First Name", text: $firstName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Add Professor") {
                let newProfessor = Professor(
                    firstName: firstName,
                    lastName: lastName,
                    phoneNumber: phoneNumber
                )
                
                professors.append(newProfessor)
                
                firstName = ""
                lastName = ""
                phoneNumber = ""
            }
            .padding()
        }
    }
}

#Preview {
    ProfessorsListView()
}
