# Advanced MapKit Integration in SwiftUI


<img width="232" alt="07-imagery" src="https://github.com/sanakghosh/MapKit-in-SwiftUI/assets/68545769/2d0e1c96-08ef-4402-a91b-aa3bd533bea3">

## Overview
This project demonstrates advanced integration of MapKit within a SwiftUI environment. It provides a SwiftUI interface for displaying a list of artworks with their details and locations on a map.

## Features
List View: Displays a list of artworks with titles.
Detail View: Shows detailed information about each artwork, including the title, artist, description, image, and location.
Map View: Integrates MapKit to display the location of each artwork with custom markers.
Full-screen Map: Allows users to view the location of an artwork on a full-screen map by tapping the location button in the Detail View.
Custom Annotations: Customizes annotations on the map to display artwork titles.

## Technologies Used
SwiftUI: For building the user interface.
MapKit: For integrating maps and annotations.
Swift: As the primary programming language.

## Installation
Clone or download the project from the GitHub repository.
Open the project in Xcode.
Build and run the project on a simulator or a physical device.

## How to Use
Launch the app.
View the list of artworks by scrolling through the list.
Tap on an artwork to view its details.
In the detail view, tap on the location button to view the artwork's location on the map.
Explore the map by zooming in/out and panning to view nearby artworks.

## Project Structure
ContentView.swift: Displays the list of artworks.
DetailView.swift: Shows detailed information about each artwork and integrates the map.
LocationMap.swift: Displays the location of an artwork on a map.
Artwork.swift: Defines the Artwork struct with properties like title, artist, description, and location coordinates.
artData: Contains sample data of artworks used in the app.

## Preview
ContentView Preview: Provides a preview of the ContentView with sample artwork data.
DetailView Preview: Offers a preview of the DetailView with sample artwork data.
LocationMap Preview: Shows a preview of the LocationMap with sample artwork data.

## Conclusion
This project demonstrates how to integrate advanced MapKit features into a SwiftUI app to provide users with an interactive and informative experience. Developers can leverage this codebase to build similar location-based applications with SwiftUI and MapKit integration.
