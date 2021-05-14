//
//  ContentView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct ContentView: View {
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    var body: some View {
            TabView{
                ListView()
                    .tabItem {
                        Image("tabicon-uslist")
                        Text("US States")
                    }
                MapView()
                    .tabItem {
                        Image("tabicon-usmap")
                        Text("USA Map")
                    }
                InfoView()
                    .tabItem {
                        Image("tabicon-person")
                        Text("Info")
                    }
            }
            .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
