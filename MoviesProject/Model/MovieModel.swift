//
//  MovieModel.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
//

import Foundation

//struct MovieModel: Identifiable, Hashable {
//    var id = UUID()
//    let title: String
//    let director: String
//    let year: Int
//    var poster: String
//    let movieType: String
//    let synopsis: String
//}
//

//    
//    
//    static var data: [MovieModel] = [MovieModel(title: "Les Infiltrés", director: "Martin Scorcèse", year: 2006, poster: "LesInfiltrés", movieType: "Action", synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche."), MovieModel(title: "Les Infiltrés", director: "Martin Scorcèse", year: 2006, poster: "LesInfiltrés", movieType: "Action", synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche."), MovieModel(title: "Les Infiltrés", director: "Martin Scorcèse", year: 2006, poster: "LesInfiltrés", movieType: "Action", synopsis: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche.")]
//}

enum Gender: String, CaseIterable, Identifiable, Decodable {
    case Thriller, Romantique, Action, Drame
    var id: Self { self }
}

struct Movie: Identifiable, Hashable, Decodable {
    var id = UUID()
    let title: String
    let director: String
    let year: Int
    let image: String
    let type: Gender
    let description: String
    var isFavorite: Bool
}


extension Movie {
    static var preview: Movie {
        // Variable calculée en instansiant un movie
        Movie(title: "Les Infiltrés", director: "Martin Scorcèse", year: 2006, image: "LesInfiltrés", type: .Action, description: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche.", isFavorite: true)
    }
}


var movies = [
    Movie(title: "Les Infiltrés", director: "by Martin Scorcèse", year: 2006, image: "LesInfiltrés", type: Gender(rawValue: "Action") ?? .Thriller, description: """
        À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche."
        """, isFavorite: true),
    Movie(title: "Inception", director: "by Christopher Nolan", year: 2010, image: "Inception", type: Gender(rawValue: "Action Sci-fi") ?? .Action, description: """
        Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.
        """, isFavorite: false),
    Movie(title: "The Revenant", director: "by Alejandro G. Iñárritu", year: 2015, image: "TheRevenant", type: Gender(rawValue: "Adventure Drama") ?? .Action, description: """
        While exploring the uncharted wilderness in 1823, frontiersman Hugh Glass (Leonardo DiCaprio) sustains life-threatening injuries from a brutal bear attack. When a member (Tom Hardy) of his hunting team kills his young son (Forrest Goodluck) and leaves him for dead, Glass must utilize his survival skills to find a way back to civilization. Grief-stricken and fueled by vengeance, the legendary fur trapper treks through the snowy terrain to track down the man who betrayed him.
        """, isFavorite: false)
]

//func getMovieInfos(movieTyped: String) async throws -> (APIMovie) {
//    guard let url = URL(string: "https://imdb-api.com/en/API/Search/k_wgl156sn/\(movieTyped)")
//    else {
//        fatalError("Missing URL")
//    }
//    var urlRequest = URLRequest(url: url)
//    urlRequest.httpMethod = "GET"
//    
//    let (data, response) = try await URLSession.shared.data(for: urlRequest)
//    
//    guard (response as? HTTPURLResponse)?.statusCode == 200
//    else {
//        fatalError("Error while fetching data")
//    }
////        let decoder = JSONDecoder()
////        decoder.keyDecodingStrategy = .convertFromSnakeCase
////        let decoded = try decoder.decode(User.self, from: data)
//    
//    let decoded = try JSONDecoder().decode(APIMovie.self, from: data)
//    print(decoded)
//    return decoded
//}

