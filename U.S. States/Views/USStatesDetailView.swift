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
                Group {
                // HERO IMAGE
                Image(stateOfAmerica.name)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
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
                }
                .padding(.horizontal)
                
                //HEADLINE
                HeadlineBlockView(stateOfAmerica: stateOfAmerica)
                
                //FLAG MEANING
                Group {
                    HeaderView(headingImage: "flag", headingText: "Flag History")
                    GroupBox{
                    Text(stateOfAmerica.historyflag)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                        .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal)
                
                //Seal
                HeaderView(headingImage: "binoculars", headingText: "Seal")
                GroupBox {
                    if stateOfAmerica.name == "Connecticut" {
                        TabView {
                            ZStack{
                                Image("Seal_of_\(stateOfAmerica.name)")
                                    .background(Circle().foregroundColor(.white))
                                Image("Seal_of_\(stateOfAmerica.name)")
                            }
                            
                            
                        }//: TabView
                        .tabViewStyle(PageTabViewStyle())
                        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
                        .padding(.vertical,50)
                    }else {
                        TabView {
                            if stateOfAmerica.name == "New Jersey" {
                                ZStack{
                                    Image("Seal_of_\(stateOfAmerica.name)")
                                        .background(Circle().foregroundColor(.white))
                                    Image("Seal_of_\(stateOfAmerica.name)")
                                }
                            }else {
                                Image("Seal_of_\(stateOfAmerica.name)")
                            }
                            
                            
                            
                        }//: TabView
                        .tabViewStyle(PageTabViewStyle())
                        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
                        .padding(.vertical,25)
                    }
                    
                    
                }//: GroupBox
                .padding()
                
                //DID YOU KNOW
                HeaderView(headingImage: "questionmark.circle", headingText: "Did you Know?")
                GroupBox {
                    TabView {
                        Text(stateOfAmerica.fact)
                    }//: TabView
                    .tabViewStyle(PageTabViewStyle())
                    .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
                }//: GroupBox
                .padding()
                
                Group {
                    
                    //MAP
                    HeaderView(headingImage: "map", headingText: "US Map")
                    InsetMapView(stateUS: stateOfAmerica)
                    .padding()
                
                    //BORDERS
                    HeaderView(headingImage: "map", headingText: "Border States")
                    if stateOfAmerica.name == "Alaska" || stateOfAmerica.name == "Hawaii" {
                        Text("None")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.yellow)
                    }else {
                        ForEach(stateOfAmerica.border, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 8) {
                                Text("\(item)")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.yellow)
                            }//: VStack
                        }
                    }
//                    Divider().frame(height: 2).background(Color.yellow).opacity(0.5).padding(.horizontal)
                    //LINK
                    HeaderView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWeblinkView(stateOfAmerica: stateOfAmerica)
                        .padding(.horizontal)
                    
                }//: Group
                
                
            }//: VStack
            .navigationBarTitle("Learn About \(stateOfAmerica.name)", displayMode: .inline)
        })
    }
}

struct USStatesDetailView_Previews: PreviewProvider {
    
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    static var previews: some View {
        USStatesDetailView(stateOfAmerica: stateOfAmerica[4])
    }
}
