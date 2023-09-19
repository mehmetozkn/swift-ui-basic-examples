//
//  ContentView.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        NavigationView {
            List(herosArray) { hero in
                NavigationLink(destination: DetailView(selectedHero: hero)
                    , label: {
                        ListRowView(superHero: hero)
                    })

            }.navigationTitle(Text("Super Hero App"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}
