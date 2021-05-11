//
//  USStatesDetailView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct USStatesDetailView: View {
    
    let stateOfAmerica : StateUS
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(stateOfAmerica.name)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(stateOfAmerica.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.yellow
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                VStack(alignment: .center, spacing: 10, content: {
                    HeadlineView(headlineTitle: "Date of Ammission:", headlineText: "\(stateOfAmerica.date)")
                    HeadlineView(headlineTitle: "Nickname(s):", headlineText: "\(stateOfAmerica.nickname)")
                    HeadlineView(headlineTitle: "Motto(s):", headlineText: "\(stateOfAmerica.motto)")
                })
                .font(.headline)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
                
                
                    
                
                //Seal
                HeaderView(headingImage: "circle", headingText: "Seal")
                GroupBox {
                    TabView {
                        Image("Seal_of_\(stateOfAmerica.name)")
                    }//: TabView
                    .tabViewStyle(PageTabViewStyle())
                    .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
                }//: GroupBox
                
                //DID YOU KNOW
                HeaderView(headingImage: "questionmark.circle", headingText: "Did you Know?")
                GroupBox {
                    TabView {
                        Text(stateOfAmerica.fact)
                    }//: TabView
                    .tabViewStyle(PageTabViewStyle())
                    .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
                }//: GroupBox
                
                //MAP
                HeaderView(headingImage: "map", headingText: "US Map")
                InsetMapView()
            }//: VStack
            .navigationBarTitle("Learn About \(stateOfAmerica.name)", displayMode: .inline)
        })
    }
}

struct USStatesDetailView_Previews: PreviewProvider {
    
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    static var previews: some View {
        USStatesDetailView(stateOfAmerica: stateOfAmerica[30])
    }
}
