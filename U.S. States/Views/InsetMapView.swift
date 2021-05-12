//
//  InsetMapView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region : MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 37.6000, longitude: -95.6650)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: stateOfAmerica, annotationContent: {
            item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(stateOfAmerica: item)
            }
            
        })
            .overlay(NavigationLink(
                        destination: MapView(),
                        label: {
                            HStack {
                                Image(systemName: "mappin.circle")
                                    .foregroundColor(.white)
                                    .imageScale(.large)
                                Text("Locations")
                                    .foregroundColor(.yellow)
                                    .fontWeight(.bold)
                            }//: HStack
                            .padding(.vertical, 10)
                            .padding(.horizontal, 14)
                            .background(
                                Color.black
                                    .opacity(0.4)
                                    .cornerRadius(8)
                            )
                        }).padding(12),alignment: .topTrailing
            )//: Navigation Link
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
    }
}
