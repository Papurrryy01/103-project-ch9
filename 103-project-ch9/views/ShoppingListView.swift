//
//  ShoppingListView.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/16/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Eggs", "Bananas"]
    @State private var item: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                
                List(shoppingList, id: \.self) { ListItem in
                    Text(ListItem)
                }
                
                HStack{
                    TextField("Add a new shopping item", text: $item)
                        .padding()
                        .submitLabel(.done)
                        .onSubmit {
                            shoppingList.append(item)
                            item = ""
                        }
                    
                    Button{
                        addItem()
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }
                }
                
            } // Main Stack
            .navigationTitle(Text("Shopping List"))
            .navigationBarTitleDisplayMode( .inline)
            
            .toolbar {
                    Menu {
                        Button("Sort A to Z") {
                            shoppingList.sort ()
                        }
                        Button("Reversed Order") {
                            shoppingList.reverse()
                        }
                    } label: {
                        Image(systemName: "arrow.up.arrow.down.circle")
                    }
            }
        }
    }
    func addItem(){
        
        let trimmedItem = item.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //1. must not be empty
        guard !trimmedItem.isEmpty else { return }
        
        //2. must be unique
        guard !shoppingList.contains(where:{ $0.lowercased() == trimmedItem.lowercased() }) else { return }
        //3. Add it to the list
        shoppingList.append(trimmedItem)
        
        //4. clear the text field
        item = ""
    }
}

#Preview {
    ShoppingListView()
}
