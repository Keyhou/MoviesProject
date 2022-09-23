//
//  ContentView.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MoviesView()
                .tabItem {
                    Label("Films", systemImage: "film.circle.fill")
                }
            ProfilView()
                .tabItem {
                    Label("Profil", systemImage: "person.circle.fill")
                }
        }
        .accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
