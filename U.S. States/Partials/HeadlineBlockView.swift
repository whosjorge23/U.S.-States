//
//  HeadlineBlockView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 14/05/21.
//

import SwiftUI

struct HeadlineBlockView: View {
    
    let stateOfAmerica : StateUS
    
    var body: some View {
        Group {
            VStack(alignment: .center, spacing: 10, content: {
                HeadlineView(headlineTitle: "Abbreviation:", headlineText: "\(stateOfAmerica.abbreviation)")
                HeadlineView(headlineTitle: "Capital:", headlineText: "\(stateOfAmerica.capital)")
                HeadlineView(headlineTitle: "Admitted to the Union:", headlineText: "\(stateOfAmerica.date)")
                HeadlineView(headlineTitle: "Nickname(s):", headlineText: "\(stateOfAmerica.nickname)")
                HeadlineView(headlineTitle: "Motto(s):", headlineText: "\(stateOfAmerica.motto)")
            })
            .font(.headline)
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
        }
    }
}

struct HeadlineBlockView_Previews: PreviewProvider {
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    static var previews: some View {
        HeadlineBlockView(stateOfAmerica: stateOfAmerica[30])
    }
}
