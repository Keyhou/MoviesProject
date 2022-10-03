//
//  SearchView.swift
//  MoviesProject
//
//  Created by Keyhan Mortezaeifar on 03/10/2022.
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


struct SearchView: View {
    @State var addingSheet = false
//    @State var moviesVar: [Movie] = movies
    @State private var updatedMovies = movies
    @State private var searchText = ""
    
    @State var apimovie: APIMovie = APIMovie(id: "", title: "", originalTitle: "", fullTitle: "", type: "", year: "", image: "")
    @State var movieToSearch = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Type the movie name...", text: $movieToSearch)
                    .padding(.leading)
                    .frame(width: 300.0, height: 80)
                    .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button {
                    Task {
                        apimovie = try await getMovieInfos(movieTyped: movieToSearch)
                    }
                } label: {
                    Text("Search")
                        .font(.title)
                        .fontWeight(.semibold)
                }
//                .searchable(text: $userToSearch,  placement: .navigationBarDrawer(displayMode: .always))
                
                Text("The infos you're looking for")
                    .font(.caption)
                Text("Title: \(apimovie.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                
//                Text(
            }
            
//            VStack {
//                List {
//                    ForEach(searchResults, id: \.self) { movie in
//                        NavigationLink {
//                            MovieDetailView(movie: movie)
//                        } label: {
//                            MovieRow(title: movie.title, year: movie.year)
//                        }
//                    }
//                }
//                .searchable(text: $searchText)
//                .navigationTitle("Movies")
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarItems(trailing:
//                                        Button {
//                    addingSheet.toggle()
//                } label: {
//                    Image(systemName: "plus.circle.fill")
//                        .accentColor(.pink)
//                }
//                    .sheet(isPresented: $addingSheet) {
//                        AddMovieView(addMovie: $addingSheet, updatedMovies: $updatedMovies)
//                    }
//                )
//
//            }
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


//struct MovieRow: View {
//    let title: String
//    let year: Int
//    var body: some View {
//        HStack{
//            Image(systemName: "film")
//                .foregroundColor(.pink)
//            Text(title)
//            Text(String(year))
//                .font(.subheadline)
//        }
//    }
//}
