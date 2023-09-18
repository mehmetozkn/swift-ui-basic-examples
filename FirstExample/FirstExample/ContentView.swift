//
//  ContentView.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            PrivateImage(image: Image("laptop"))
            PrivateImage(image: Image("ankara"))

          

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIScreen {
    static func width(_ multiplier: CGFloat) -> CGFloat {
        return main.bounds.width * multiplier
    }
}
