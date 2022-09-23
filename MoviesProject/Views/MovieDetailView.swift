//
//  MovieDetailView.swift
//  MoviesProject
//
//  Created by Apprenant n°15 Keyhan Mortezaeifar on 20/09/2022.
//

import SwiftUI

struct MovieDetailView: View {

    var body: some View {
        VStack {
            
            Text("Les Infiltrés")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("by Martin Scorcèse")
                .fontWeight(.semibold)
                .font(.title)
                .bold()
            
            Text("2006")
                .italic()
            
            Image("LesInfiltrésPoster")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text("Action")
                .padding()
                .italic()
            
            Text("À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quarters sud. Ce dernierva racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre commentle monde marche.")
                .multilineTextAlignment(.center)
                .padding(5)
            
            Spacer()
        }
        .padding()
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
