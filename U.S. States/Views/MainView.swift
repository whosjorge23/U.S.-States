//
//  MainView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 04/06/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewRouter = ViewRouter()
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    var body: some View {
        ZStack {
            
//            offWhite.edgesIgnoringSafeArea(.all)
            
            switch viewRouter.currentView {
            case .list:
                ListView()
            case .map:
                MapView()
            case .person:
                InfoView()
            }

            VStack {
                Spacer()
                DarkTabBar(viewRouter: viewRouter)

            }
        }
    }
    
    //MARK: - Drawing constants
    let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

