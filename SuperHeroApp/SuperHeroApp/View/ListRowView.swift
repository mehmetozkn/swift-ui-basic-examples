//
//  ListRowView.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct ListRowView: View {
    var superHero: SuperHero
    
    var body: some View {
        HStack {
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
                .clipShape(Circle())
            
            Spacer()
            
            VStack {
                Text(superHero.name)
                    .font(.title)
                    .bold()
                
                Text(superHero.city)
                    .font(.title)
            }
            
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(superHero: batman)
    }
}
