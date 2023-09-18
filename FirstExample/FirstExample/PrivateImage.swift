//
//  PrivateImage.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 18.09.2023.
//

import SwiftUI

struct PrivateImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable().aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.width(0.8))
            .clipShape(Circle())
            .padding(16)
            
    }
}

struct PrivateImage_Previews: PreviewProvider {
    static var previews: some View {
        PrivateImage(image: Image("ankara"))
    }
}
