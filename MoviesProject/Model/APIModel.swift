//
//  APIModel.swift
//  MoviesProject
//
//  Created by Keyhan Mortezaeifar on 03/10/2022.
//
import Foundation

//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
//
//import Foundation
//
//// MARK: - Welcome
//struct APIMovie: Codable {
//    let id, title, originalTitle, fullTitle: String
//    let type, year: String
//    let image: String
////    let releaseDate, runtimeMins, runtimeStr, plot: String
////    let plotLocal: String
////    let plotLocalIsRTL: Bool
////    let awards, directors: String
////    let directorList: [CompanyListElement]
////    let writers: String
////    let writerList: [CompanyListElement]
////    let stars: String
////    let starList: [CompanyListElement]
////    let actorList: [ActorList]
////    let fullCast: JSONNull?
////    let genres: String
////    let genreList: [CountryListElement]
////    let companies: String
////    let companyList: [CompanyListElement]
////    let countries: String
////    let countryList: [CountryListElement]
////    let languages: String
////    let languageList: [CountryListElement]
////    let contentRating, imDBRating, imDBRatingVotes, metacriticRating: String
////    let ratings, wikipedia, posters, images: JSONNull?
////    let trailer: JSONNull?
////    let boxOffice: BoxOffice
////    let tagline: JSONNull?
////    let keywords: String
////    let keywordList: [String]
////    let similars: [Similar]
////    let tvSeriesInfo, tvEpisodeInfo, errorMessage: JSONNull?
//
//    enum CodingKeys: String, CodingKey {
//        case id, title, originalTitle, fullTitle, type, year, image
////        , releaseDate, runtimeMins, runtimeStr, plot, plotLocal
////        case plotLocalIsRTL = "plotLocalIsRtl"
////        case awards, directors, directorList, writers, writerList, stars, starList, actorList, fullCast, genres, genreList, companies, companyList, countries, countryList, languages, languageList, contentRating
////        case imDBRating = "imDbRating"
////        case imDBRatingVotes = "imDbRatingVotes"
////        case metacriticRating, ratings, wikipedia, posters, images, trailer, boxOffice, tagline, keywords, keywordList, similars, tvSeriesInfo, tvEpisodeInfo, errorMessage
//    }
//}
//
//// MARK: - ActorList
//struct ActorList: Codable {
//    let id: String
//    let image: String
//    let name, asCharacter: String
//}
//
//// MARK: - BoxOffice
//struct BoxOffice: Codable {
//    let budget, openingWeekendUSA, grossUSA, cumulativeWorldwideGross: String
//}
//
//// MARK: - CompanyListElement
//struct CompanyListElement: Codable {
//    let id, name: String
//}
//
//// MARK: - CountryListElement
//struct CountryListElement: Codable {
//    let key, value: String
//}
//
//// MARK: - Similar
//struct Similar: Codable {
//    let id, title: String
//    let image: String
//    let imDBRating: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, title, image
//        case imDBRating = "imDbRating"
//    }
//}
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public func hash(into hasher: inout Hasher) {
//        // No-op
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}

struct APIMovie: Decodable, Identifiable {
    var id: Int
    var overview: String
    var poster_path: String
    var release_date: String
    var title: String
}

// Example
//{
//    "adult": false,
//    "backdrop_path": "/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg",
//    "belongs_to_collection": null,
//    "budget": 63000000,
//    "genres": [
//        {
//            "id": 18,
//            "name": "Drama"
//        }
//    ],
//    "homepage": "http://www.foxmovies.com/movies/fight-club",
//    "id": 550,
//    "imdb_id": "tt0137523",
//    "original_language": "en",
//    "original_title": "Fight Club",
//    "overview": "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
//    "popularity": 95.616,
//    "poster_path": "/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
//    "production_companies": [
//        {
//            "id": 508,
//            "logo_path": "/7cxRWzi4LsVm4Utfpr1hfARNurT.png",
//            "name": "Regency Enterprises",
//            "origin_country": "US"
//        },
//        {
//            "id": 711,
//            "logo_path": "/tEiIH5QesdheJmDAqQwvtN60727.png",
//            "name": "Fox 2000 Pictures",
//            "origin_country": "US"
//        },
//        {
//            "id": 4700,
//            "logo_path": "/A32wmjrs9Psf4zw0uaixF0GXfxq.png",
//            "name": "The Linson Company",
//            "origin_country": "US"
//        },
//        {
//            "id": 20555,
//            "logo_path": "/hD8yEGUBlHOcfHYbujp71vD8gZp.png",
//            "name": "Taurus Film",
//            "origin_country": "DE"
//        },
//        {
//            "id": 54051,
//            "logo_path": null,
//            "name": "Atman Entertainment",
//            "origin_country": ""
//        },
//        {
//            "id": 54052,
//            "logo_path": null,
//            "name": "Knickerbocker Films",
//            "origin_country": "US"
//        }
//    ],
//    "production_countries": [
//        {
//            "iso_3166_1": "DE",
//            "name": "Germany"
//        },
//        {
//            "iso_3166_1": "US",
//            "name": "United States of America"
//        }
//    ],
//    "release_date": "1999-10-15",
//    "revenue": 100853753,
//    "runtime": 139,
//    "spoken_languages": [
//        {
//            "english_name": "English",
//            "iso_639_1": "en",
//            "name": "English"
//        }
//    ],
//    "status": "Released",
//    "tagline": "Mischief. Mayhem. Soap.",
//    "title": "Fight Club",
//    "video": false,
//    "vote_average": 8.433,
//    "vote_count": 24881
//}

//func getMovieInfosToo(movieTyped: String) async throws -> (Movie) {
//    var semaphore = DispatchSemaphore (value: 0)
//     
//    var request = URLRequest(url: URL(string: "https://imdb-api.com/en/API/Title/k_1234567/tt1832382")!,timeoutInterval: Double.infinity)
//    request.httpMethod = "GET"
//     
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      guard let data = data else {
//        print(String(describing: error))
//        return
//      }
//      print(String(data: data, encoding: .utf8)!)
//      semaphore.signal()
//    }
//     
//    task.resume()
//    semaphore.wait()
//
//}

func getMovieInfosThree(movieTyped: String) async throws -> (APIMovie) {
    guard let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=aa16bb629305619f9d8295fd1c919542")
    else {
        fatalError("Missing URL")
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"

    let (data, response) = try await URLSession.shared.data(for: urlRequest)

    guard (response as? HTTPURLResponse)?.statusCode == 200
    else {
        fatalError("Error while fetching data")
    }
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        let decoded = try decoder.decode(User.self, from: data)

    let decoded = try JSONDecoder().decode(APIMovie.self, from: data)
    print(decoded)
    return decoded
}
