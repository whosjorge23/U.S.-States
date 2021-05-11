//
//  MapView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 11/05/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPERTIES
    @State private var region : MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 37.6000, longitude: -95.6650)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    //MARK: - BODY
    var body: some View {
//        NavigationView {
        //MARK: - No1 BASIC MAP
//        Map(coordinateRegion: $region)
        
        //MARK: - No1 MAP WITH ANNOTATIONS
        Map(coordinateRegion: $region, annotationItems: stateOfAmerica, annotationContent: {
            item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(stateOfAmerica: item)
            }
            
        })//: Map
        .ignoresSafeArea(.all, edges: .all)
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3, content: {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: HStack
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: HStack
                })//: VStack
            }//: HStack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black.opacity(0.6).cornerRadius(8)
            )
            .padding(),alignment: .top
        )
//        .listStyle(InsetGroupedListStyle())
//        .navigationBarTitle("Map", displayMode: .inline)
//        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
