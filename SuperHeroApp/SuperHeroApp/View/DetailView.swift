//
//  DetailView.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct DetailView: View {
    var selectedHero: SuperHero

    var body: some View {
        
        VStack {
            MapView(coordinate: selectedHero.coordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.3
                , alignment: .center)
                .edgesIgnoringSafeArea(.all)

            PrivateImageView(image: Image(selectedHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9
                , height: UIScreen.main.bounds.height * 0.25
                , alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.2)
            
            VStack {
                HStack {
                    Text(selectedHero.name)
                        .font(.largeTitle)
                        .foregroundColor(.cyan)
                    Spacer()
                    Text(selectedHero.job)
                        .font(.title)
                        .foregroundColor(.indigo)
                }
                
                Text(selectedHero.city)
                
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.2)
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedHero: batman)
    }
}
