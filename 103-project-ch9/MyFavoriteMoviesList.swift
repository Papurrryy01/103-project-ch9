//
//  MyFavoriteMoviesList.swift
//  103-project-ch9
//
//  Created by Carlos Vera on 5/18/26.
//

import SwiftUI

struct MyFavoriteMoviesList: View {
    @State private var movie: String = ""
    
    @State private var moviesList: Set<String> = ["John Wick 1", "John Wick 2"]

    var body: some View {
        
        NavigationStack {
            //What the ForEach do - .... whats the difference between list
            List {
                ForEach(Array(moviesList).sorted(), id: \.self) { movie in
                    Text(movie)
                        .navigationTitle("My Favorite Movies")
                    }
                }
            }
        
        HStack{
            TextField("Add a new movie", text: $movie)
                .padding()
                .submitLabel(.done)
                .onSubmit {
                    addMovie()
                }
            
            Button{
                addMovie()
            } label: {
                Image(systemName: "arrowshape.up.circle.fill")
                    .padding()
                    .font(.largeTitle)
                
                
            }
        }
    }
    
    func addMovie() {
        let trimmed = movie.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        moviesList.insert(trimmed)
        movie = ""
    }
}

#Preview {
    MyFavoriteMoviesList()
}
