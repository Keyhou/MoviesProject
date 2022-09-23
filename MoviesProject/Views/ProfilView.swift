//
//  ProfilView.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 21/09/2022.
//

// A refaire en dynamique

import SwiftUI

struct ProfilView: View {
    //    var sampleMenuItems: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("helenePic")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Text("@Hélène")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.top)
                    Text("22/02/1996")
                        .padding(.vertical)
                    Text("Hello, I'm a movie fan and most of all I LOVE Leonardo DiCaprio ♥️")
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal)
                
                List {
                    Section(header: Text("Genres préférés")) {
                        HStack {
                            ForEach(movies) { movie in
                                Text(movie.title)
                            }
                        }
                    }
                    .headerProminence(.increased)
                    Section(header: Text("Films préférés")) {
                        HStack {
                            ForEach(movies) { movie in
                                if movie.isFavorite == true {
                                    Text(movie.title)
                                }
                            }
                        }
                    }
                    .headerProminence(.increased)
                }
                //            S'il n'y a pas de NavigationView:
                //            .listStyle(SidebarListStyle())
                
            }
            .navigationTitle("Profil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}






// Correction

////
////  ProfileView.swift
////  Movies
////
////  Created by Zoé Hartman on 21/09/2022.
////
//
//import SwiftUI
//
//struct ProfileView: View {
//
//    var user : User
//
//    init(user: User) {
//        let formatter = RelativeDateTimeFormatter()
//        formatter.unitsStyle = .short
//        let relativeDate = formatter.localizedString(for: user.dateOfRegister, relativeTo: Date.now)
//        self.user = user
//        self.user.timeSinceRegister = relativeDate
//    }
//
//    var body: some View {
//        VStack{
//            Image("helleneava")
//                .scaledToFill()
//                .frame(width: 150, height: 150)
//                .clipped()
//                .clipShape(Capsule())
//                .shadow(radius: 5.0)
//                .padding(20)
//            Text("@"+user.username)
//                .font(.title)
//                .fontWeight(.bold)
//                .padding(10)
//            VStack{
//                Text(user.dateOfBirth.formatted(date: .long, time: .omitted))
//                    .font(.callout)
//                    .opacity(0.4)
//                    .padding(20)
//                Text("Inscrite " + user.timeSinceRegister)
//            }
//
//            Text(user.profileMessage)
//                .padding(20)
//
//            Section ("Films préférés"){
//                VStack{
//                    ForEach(movies) {el in
//                        if el.isFavorite == true {
//                            Text(el.title)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView(user: users[0]).environment(\.locale, Locale(identifier: "fr"))
//    }
//}
