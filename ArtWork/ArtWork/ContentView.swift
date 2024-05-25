//
//  ContentView.swift
//  ArtWork
//
//  Created by Sanak Ghosh on 5/24/24.
//

import SwiftUI

struct ContentView: View {
  @State var artworks = artData
  
  var body: some View {
    NavigationStack {
      List(artworks) { artwork in
        NavigationLink(value: artwork) {
          Text(artwork.title)
        }
      }
      .listStyle(PlainListStyle())
      .navigationBarTitle("Artworks")
      .navigationDestination(for: Artwork.self) { artwork in
        DetailView(artwork: artwork)
      }
    }
  }
}

#Preview {
  ContentView()
}
