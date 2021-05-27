//
//  ContentView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct ContentView: View {
    
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    @State var index = 0
    
    var body: some View {
//            TabView{
//                ListView()
//                    .tabItem {
//                        Image("tabicon-uslist")
//                        Text("US States")
//                    }
//                MapView()
//                    .tabItem {
//                        Image("tabicon-usmap")
//                        Text("USA Map")
//                    }
//                InfoView()
//                    .tabItem {
//                        Image("tabicon-person")
//                        Text("Info")
//                    }
//            }
//            .accentColor(.orange)
        VStack(alignment: .center, spacing: 0, content: {
            
            ZStack{
                if self.index == 0 {
                    ListView()
                }
                else if self.index == 2 {
                    
                    InfoView()
                }
                else {
                    MapView()
                }
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            CircleTabBarView(index: self.$index)
        })
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
