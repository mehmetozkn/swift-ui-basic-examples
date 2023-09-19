//
//  PrivateImageView.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct PrivateImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 12)
    }
}

struct PrivateImageView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateImageView(image: Image("superman"))
    }
}
