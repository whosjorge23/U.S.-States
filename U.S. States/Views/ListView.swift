//
//  ListView.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 13/05/21.
//

import SwiftUI

struct ListView: View {
    let stateOfAmerica : [StateUS] = Bundle.main.decode("usstates.json")
    //var states_of_america = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming",]
    var body: some View {
        NavigationView{
            List{
                ForEach(stateOfAmerica) { item in
                    NavigationLink(destination: USStatesDetailView(stateOfAmerica: item)) {
                        USStateListView(stateOfAmerica: item)
                    }
                    
                }
            }
            .navigationBarTitle("U.S. States")
        }
        .accentColor(.yellow)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
