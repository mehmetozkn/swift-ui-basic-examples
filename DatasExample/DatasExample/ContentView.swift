//
//  ContentView.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
   @State var name = "Mehmet"
    
    var body: some View {
        VStack {
            Text(String(name))
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                name = "özkan"
            },
                   label: {
                Text("Increase Number")
            })
            
            TextField("Placeholder", text: self.$name)
                .frame(width: 100, height: 50)
                .multilineTextAlignment(.center)
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
