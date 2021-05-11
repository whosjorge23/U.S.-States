//
//  ContentView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct ContentView: View {
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    //var states_of_america = ["Delaware", "Pennsylvania", "New Jersey", "Georgia", "Connecticut", "Massachusetts", "Maryland", "South Carolina", "New Hampshire", "Virginia", "New York", "North Carolina", "Rhode Island", "Vermont", "Kentucky", "Tennessee", "Ohio", "Louisiana", "Indiana", "Mississippi", "Illinois", "Alabama", "Maine", "Missouri", "Arkansas", "Michigan", "Florida", "Texas", "Iowa", "Wisconsin", "California", "Minnesota", "Oregon", "Kansas", "West Virginia", "Nevada", "Nebraska", "Colorado", "North Dakota", "South Dakota", "Montana", "Washington", "Idaho", "Wyoming", "Utah", "Oklahoma", "New Mexico", "Arizona", "Alaska", "Hawaii"]
    var body: some View {
        NavigationView{
            List {
                ForEach(stateOfAmerica) { item in
                    NavigationLink(destination: USStatesDetailView(stateOfAmerica: item)) {
                        USStateListView(stateOfAmerica: item)
                    }
                    
                }
            }
            .navigationBarTitle("U.S. States")
        }
        .background(Image("california"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
