//
//  AddMovieView.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 21/09/2022.
//

import SwiftUI

struct AddMovieView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var addMovie: Bool
    
    @State var newMovieTitle: String = ""
    @State var newMovieDirector: String = ""
    @State var newMovieYear: String = ""
    @State var newMovieGender: String = ""
    @State var newSynopsis: String = ""
    
    @State private var selectedGender: Gender = .Action
//    @Environment(\.dismiss) var dismiss
    @Binding var updatedMovies: [Movie]
    
    func addMovieData () {
        updatedMovies.append(Movie(title: newMovieTitle, director: newMovieDirector, year: Int(newMovieYear) ?? 0, image: "", type: selectedGender, description: newSynopsis, isFavorite: false))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("CARACTÉRISTIQUES")) {
                        TextField("Titre du film", text: $newMovieTitle)
                        TextField("Réalisateur", text: $newMovieDirector)
                        TextField("Année de sortie", text: $newMovieYear)
                    }
                    Section(header: Text("SYNOSPIS")) {
                        TextField("Pitch", text: $newSynopsis)
                        .frame(minHeight: 100, maxHeight: .infinity,alignment: .top)
                    }
                    Section(header: Text("GENRE")) {
                        Picker(selection: $selectedGender, label: Text("")) {
                            ForEach(Gender.allCases, id: \.self) { genre in
                                Text(genre.rawValue)
                            }
                        }
                        .labelsHidden()
                        //                        .pickerStyle(.menu)
                        .accentColor(.pink)
                    }
                }
                Button {
                    addMovieData()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Sauvegarder")
                        .accentColor(.pink)
                }
            }
            .navigationBarTitle("Ajouter un film")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Close")
                        .accentColor(.pink)
                }
            }
        }
    }
}



struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView(addMovie: .constant(true), newMovieTitle: "", newMovieDirector:  "", newMovieYear: "", newMovieGender: "", newSynopsis: "", updatedMovies: .constant(([.preview])))
    }
}
