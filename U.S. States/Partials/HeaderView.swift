//
//  HeaderView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import SwiftUI

struct HeaderView: View {
    var headingImage: String
    var headingText: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName:headingImage)
                .foregroundColor(.yellow)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }//: HStack
        .padding(.vertical)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headingImage: "questionmark.circle", headingText: "Did You Know?")
    }
}
