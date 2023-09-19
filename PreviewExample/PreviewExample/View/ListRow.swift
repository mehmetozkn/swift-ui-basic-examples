//
//  ListRow.swift
//  PreviewExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct ListRow: View {
    var city: City
    
    var body: some View {
        HStack {
            Image(city.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .leading)
            Spacer()
            
            VStack {
                Text("City : \(city.name)")
                    .font(.title)
                    .foregroundColor(.blue)
                
                Text(city.region)
            }
            
            Spacer()
            
        }.padding()
        
    }
    
}
    struct ListRow_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ListRow(city: istanbul).previewLayout(.sizeThatFits)
                    .environment(\.sizeCategory, .extraExtraExtraLarge)
                
                
                ListRow(city: ankara).previewLayout(.sizeThatFits)
                    .environment(\.sizeCategory, .extraSmall)
             
        }
    }
}
