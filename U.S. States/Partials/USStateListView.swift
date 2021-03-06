//
//  USStateListView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct USStateListView: View {
    
    let stateOfAmerica : StateUS
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(stateOfAmerica.name)
                .resizable()
                .scaledToFill()
//                .frame(width: 80, height:60)
                .frame(width: 90, height:60)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text("\(stateOfAmerica.name) (\(stateOfAmerica.abbreviation))")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                HStack(alignment: .center, spacing: nil, content: {
                    Text(stateOfAmerica.capital)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
//                    Spacer()
//                    Text(stateOfAmerica.date)
//                        .font(.footnote)
//                        .multilineTextAlignment(.leading)
//                        .lineLimit(2)
//                        .padding(.trailing, 15)
                })
                
            }//: VStack
        }//: HStack
    }
}

struct USStateListView_Previews: PreviewProvider {
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    
    static var previews: some View {
        USStateListView(stateOfAmerica: stateOfAmerica[4])
    }
}
