//
//  InfoRowView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 13/05/21.
//

import SwiftUI

struct InfoRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel! ,destination: URL(string: "https://\(linkDestination!)")!).foregroundColor(.yellow)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.yellow)
                }else {
                    EmptyView()
                }
            }//:HSTACK
        }//: VSTACK
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoRowView(name: "Website", linkLabel: "westcostyle",linkDestination: "westcostyle.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            InfoRowView(name: "Developer", content: "Giorgio Giannotta")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
