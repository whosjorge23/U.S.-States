//
//  InfoView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 13/05/21.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                
                Image("app-logo")
                  .resizable()
                  .scaledToFit()
                  .padding(.top)
                  .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(.yellow), radius: 8, x: 0, y: 4)
                
                Text("U.S. States".uppercased())
                  .font(.system(.title, design: .serif))
                  .fontWeight(.bold)
                    .foregroundColor(.yellow)
                
            }//: VStack
            .padding()
            
            Form {
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    InfoRowView(name: "Developer", content: "Giorgio Giannotta")
                    InfoRowView(name: "Platforms", content: "iOS & Web")
                    InfoRowView(name: "Website", linkLabel: "Softbay X", linkDestination: "softbayx.com")
                    InfoRowView(name: "Portfolio", linkLabel: "westcostyle", linkDestination: "westcostyle.com")
                    InfoRowView(name: "Twitter", linkLabel: "@whosjorge23", linkDestination: "twitter.com/whosjorge23")
                    InfoRowView(name: "GitHub", linkLabel: "@whosjorge23", linkDestination: "github.com/whosjorge23")
                    InfoRowView(name: "Instagram", linkLabel: "@whosjorge23", linkDestination: "instagram.com/whosjorge23")
                }//: Section 2
                
                // MARK: - SECTION #3
                Section(header:FooterView()) {}
                
            }//: Form
            
//
            
            
            
            
        }//: VStack
        .frame(maxWidth: 640)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
