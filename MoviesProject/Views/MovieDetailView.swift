////
////  MovieDetailView.swift
////  MoviesProject
////
////  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
////
//
import SwiftUI
//
//struct MovieDetailView: View {
//    let movie : Movie
//    var body: some View {
//        VStack {
//
//            ForEach(movies, id: \.self) { movie in
//
//
//                Text(movie.title)
//                    .font(.largeTitle)
//                    .bold()
//                    .padding()
//
//                Text("by \(movie.director)")
//                    .fontWeight(.semibold)
//                    .font(.title)
//                    .bold()
//
//                Text("\(movie.year)")
//                    .italic()
//
//                Image(movie.poster)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding()
//
//                Text(movie.movieType)
//                    .padding()
//                    .italic()
//
//                Text(movie.synopsis)
//                    .multilineTextAlignment(.center)
//                    .padding(5)
//
//                Spacer()
//            }
//            .padding()
//        }
//    }
//}
//
//struct MovieDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetailView(movie: movies[0])
//    }
//}

struct MovieDetailView: View {
    let movie : Movie
    var body: some View {
        NavigationView {
            VStack {
                Text(movie.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                
                Text(movie.director)
                    .font(.custom("Arial", size: 20))
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(5)
                
                Text(String("\(movie.year)"))
                    .italic()
                
                Image(movie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(movie.type.rawValue)
                    .italic()
                
                    .padding(30)
                Text(movie.description)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                
                    .padding()
                Spacer()
                
            }
            .toolbar{
                HeartButton()
            }
        }
    }
}

struct HeartButton: View {
    @State var isLiked = false
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7 : 1.3
    }
    @State private var animate = false
    
    var body: some View {
        Button(action: {
            self.animate = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() +
                                          self.animationDuration, execute: {
                self.animate = false
                self.isLiked.toggle() })
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundColor(isLiked ? .red : .black)
        })
        .scaleEffect(animate ? animationScale : 1)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}
