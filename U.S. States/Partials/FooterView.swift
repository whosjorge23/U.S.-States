//
//  FooterView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 13/05/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center, spacing: 10) {
                
                Image("softbayx-swiftui")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                    .layoutPriority(0)
                
                Text("Copyright © Giorgio Giannotta\nAll Right Reserved.")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .multilineTextAlignment(.center)
                    .layoutPriority(1)
            }//: VStack
            Spacer()
        }//: HStack
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
