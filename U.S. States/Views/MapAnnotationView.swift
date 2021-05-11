//
//  MapAnnotationView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 11/05/21.
//

import SwiftUI

struct MapAnnotationView: View {
    let stateOfAmerica : StateUS
    
    @State private var animation : Double = 0.0
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.yellow)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.yellow, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image("Seal_of_\(stateOfAmerica.name)")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }//: ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    
    static let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")

    
    static var previews: some View {
        MapAnnotationView(stateOfAmerica: stateOfAmerica[30])
    }
}
