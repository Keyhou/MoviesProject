//
//  MoviesListView.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {
        NavigationView {
            List {
                MovieCell(title: "Les Infiltrés", year: 2006)
                MovieCell(title: "Inception", year: 2010)
                MovieCell(title: "The Revenant", year: 2015)
            }
            .navigationTitle("Movies")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}

struct MovieCell: View {
    let title: String
    let year: Int
    var imageName = "film"
    
    var body: some View {
        NavigationLink {
            MovieDetailView()
        } label: {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.pink)
                
                Text(title)
                    .padding(.leading)
                
                Text("(" + String(year) + ")")
                    .font(.caption)
                
            }
            .padding(.vertical)
        }
    }
}
