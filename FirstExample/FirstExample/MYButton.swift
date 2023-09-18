//
//  Button.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct MYButton: View {
    var body: some View {
        NavigationView {
            VStack {
                
                PrivateImage(image: Image("ankara"))
                Button(action: {
                    print("tıklandı")
                }, label: {
                    Text("My Button")
                })
                
                NavigationLink(destination: ContentView(), label: {
                    Text("Ana sayfaya git")
                })
                
            }
        }
        
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        MYButton()
    }
}
