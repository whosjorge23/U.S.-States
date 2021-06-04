//
//  CircleTabBarView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 27/05/21.
//

import SwiftUI

struct CircleTabBarView: View {
    
//    @State var index = 0
    @Binding var index : Int
    
    var body: some View {
        HStack(alignment: .center, spacing: nil, content: {
            Button(action: {
                self.index = 0
            }, label: {
                VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    if self.index != 0 {
                        Image("tabicon-uslist")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 43)
                    }else {
                        Image("tabicon-uslist")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 43)
                            .padding()
                            .background(Color.white.opacity(0.20))
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        Text("US States")
                            .foregroundColor(.orange)
                    }
                })
                
            })
            Spacer(minLength: 15)
            Button(action: {
                self.index = 1
            }, label: {
                VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    if self.index != 1 {
                        Image("tabicon-usmap")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 43, height: 43)
                    }else {
                        Image("tabicon-usmap")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 43, height: 43)
                            .padding()
                            .background(Color.white.opacity(0.20))
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        Text("USA Map")
                            .foregroundColor(.orange)
                    }
                })
            })
            Spacer(minLength: 15)
            Button(action: {
                self.index = 2
            }, label: {
                VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    if self.index != 2 {
                        Image("tabicon-person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 43)
                    }else {
                        Image("tabicon-person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 43)
                            .padding()
                            .background(Color.white.opacity(0.20))
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        Text("Info")
                            .foregroundColor(.orange)
                    }
                })
            })
            
        })
        .padding(.vertical, -10)
        .padding(.horizontal,25)
        .animation(.spring())
    }
}

//struct CircleTabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleTabBarView()
//    }
//}
