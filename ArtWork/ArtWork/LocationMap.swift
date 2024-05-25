//
//  LocationMap.swift
//  ArtWork
//
//  Created by Sanak Ghosh on 5/25/24.
//

import SwiftUI
import MapKit

struct LocationMap: View {
  var artwork: Artwork
  @Binding var showModal: Bool
//  @State var region = MKCoordinateRegion()
  
  var body: some View {
    VStack {
      HStack {
        Text(self.artwork.locationName)
        Spacer()
        Button("Done") { self.showModal = false }
      }
      .padding()

      Map(
        initialPosition: .camera(MapCamera(
          centerCoordinate: artwork.coordinate,
          distance: 1200,
          heading: 90,
          pitch: 60)),
        bounds:
          MapCameraBounds(minimumDistance: 1500,
                          maximumDistance: 1500)) {
        Marker(artwork.title,
               systemImage: artwork.symbol,
               coordinate: artwork.coordinate)
        .tint(artwork.background)

        Annotation(artwork.title,
                   coordinate: artwork.coordinate) {
          Image(systemName: artwork.symbol)
            .padding(6)
            .foregroundStyle(.white)
            .background(artwork.background)
        }
      }
      .mapStyle(.imagery(elevation: .realistic))

//      Map(coordinateRegion: $region, annotationItems: [artwork]) { artwork in
//        MapMarker(coordinate: artwork.coordinate)
//      }
//      .onAppear {
//        region.center = artwork.coordinate
//        region.span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
//      }
    }
  }
}

#Preview {
  LocationMap(artwork: artData[1], showModal: .constant(true))
}

