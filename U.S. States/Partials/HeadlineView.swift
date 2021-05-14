//
//  HeadlineView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 11/05/21.
//

import SwiftUI

struct HeadlineView: View {
    var headlineTitle: String
    var headlineText: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            Text(headlineTitle)
                .foregroundColor(.yellow)
            Spacer()
            Text(headlineText).multilineTextAlignment(.trailing)
        })
    }
}

struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineView(headlineTitle: "Date of Ammission: ", headlineText: "04 Jul 1776")
    }
}
