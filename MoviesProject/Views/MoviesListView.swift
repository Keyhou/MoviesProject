////
////  MoviesListView.swift
////  MoviesProject
////
////  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
////
//
import SwiftUI
//
//struct MoviesListView: View {
//    var body: some View {
//        NavigationView {
//
//            VStack {
//                List(movies) { movie in
//                    NavigationLink {
//                       MovieDetailView(movie: movie)
//                    } label: {
//                        MovieCell(title: movie.title, year: movie.year)
//                    }
//
//
//                }
//                .navigationTitle("Movies")
//            .navigationBarTitleDisplayMode(.inline)
//            }
//        }
//    }
//}
//
//struct MoviesListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MoviesListView()
//    }
//}
//
//struct MovieCell: View {
//    let title: String
//    let year: Int
////    let movie: MovieModel
//    var imageName = "film"
//
//    var body: some View {
//        NavigationLink {
//            MovieDetailView()
//        } label: {
//            HStack {
//                Image(systemName: imageName)
//                    .foregroundColor(.pink)
//
//                Text(title)
//                    .padding(.leading)
//
//                Text("(" + String(year) + ")")
//                    .font(.caption)
//
//            }
//            .padding(.vertical)
//        }
//    }
//}


struct MoviesView: View {
    @State var addingSheet = false
//    @State var moviesVar: [Movie] = movies
    @State private var updatedMovies = movies
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(searchResults, id: \.self) { movie in
                        NavigationLink {
                            MovieDetailView(movie: movie)
                        } label: {
                            MovieRow(title: movie.title, year: movie.year)
                        }
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        Button {
                    addingSheet.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .accentColor(.pink)
                }
                    .sheet(isPresented: $addingSheet) {
                        AddMovieView(addMovie: $addingSheet, updatedMovies: $updatedMovies)
                    }
                )
              
            }
        }
    }
    var searchResults: [Movie] {
            if searchText.isEmpty {
                return updatedMovies
            } else {
                return updatedMovies.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
            }
        }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}


struct MovieRow: View {
    let title: String
    let year: Int
    var body: some View {
        HStack{
            Image(systemName: "film")
                .foregroundColor(.pink)
            Text(title)
            Text(String(year))
                .font(.subheadline)
        }
    }
}
