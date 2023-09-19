//
//  ContentView.swift
//  PreviewExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(cityList) { city in
            ListRow(city: city)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                .previewDisplayName("iphone 11")
            ContentView()
                .previewDevice("iPhone 14 Pro Max")
                .previewDisplayName("iphone 14 pro max")
        }
        
    }
}
