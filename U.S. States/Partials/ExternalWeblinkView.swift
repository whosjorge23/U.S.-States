//
//  ExternalWeblinkView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 12/05/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let stateOfAmerica : StateUS
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(stateOfAmerica.name, destination: URL(string: stateOfAmerica.link) ?? URL(string: "https://wikipedia.com/wiki/\(stateOfAmerica.name)")!)
                    Image(systemName: "arrow.up.right.square")
                }//: Group
                .foregroundColor(.yellow)
            }//: HStack
        }//: GroupBox
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    static var previews: some View {
        USStateListView(stateOfAmerica: stateOfAmerica[30])
    }
}
