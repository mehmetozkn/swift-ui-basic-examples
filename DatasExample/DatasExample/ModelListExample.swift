//
//  ModelListExample.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct ModelListExample: View {
    var body: some View {
        NavigationView {
            List(modelArray) { (element) in
                NavigationLink(destination: DetailView(selected: element)
                    
                , label:{
                    Text(element.name)
                }
                               
                ).navigationTitle("Yapılacaklar")
            
                
            }
        }
    }
}

struct ModelListExample_Previews: PreviewProvider {
    static var previews: some View {
        ModelListExample()
    }
}
