//
//  ViewRouter.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 04/06/21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentView: Route = Route.list
    
    func imageName(route: Route) -> String {
        switch route {
        case .list:
            return "tabicon-uslist"
        case .map:
            return "tabicon-usmap"
        case .person:
            return "tabicon-person"

        }
    }
}

enum Route: CaseIterable {
    case list
    case map
    case person

}
