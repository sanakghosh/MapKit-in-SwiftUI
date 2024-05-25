//
//  DetailView.swift
//  ArtWork
//
//  Created by Sanak Ghosh on 5/25/24.
//

import SwiftUI

struct DetailView: View {
  let artwork: Artwork
  @State private var showMap = false
  
  var body: some View {
    VStack {
      Text(artwork.title)
        .font(.title2)
        .multilineTextAlignment(.center)
        .lineLimit(3)
      
      Button(action: { self.showMap = true }) {
        HStack(alignment: .firstTextBaseline) {
          Image(systemName: "mappin.and.ellipse")
          
          Text(artwork.locationName)
            .font(.headline)
        }
      }
      .fullScreenCover(isPresented: $showMap) {
        LocationMap(artwork: self.artwork, showModal: self.$showMap)
      }
      
      Text("Artist: \(artwork.artist)")
        .font(.subheadline)
      
      Image(artwork.imageName)
        .resizable()
        .frame(maxWidth: 300, maxHeight: 600)
        .aspectRatio(contentMode: .fit)
      
      Divider()
      
      Text(artwork.description)
        .multilineTextAlignment(.leading)
        .lineLimit(20)
    }
    .padding()
    .navigationBarTitleDisplayMode(.inline)
    //    .navigationBarTitle(Text(artwork.title), displayMode: .inline)
  }
}


#Preview {
  DetailView(artwork: artData[0])
}
