//
//  BolumluListView.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct BolumluListView: View {
    var body: some View {
       /*
        List(userArray) { (element) in
            
        }
        */
        List {
            ForEach(userArray) { group in
                Section(header: Text(group.authority)) {
                    ForEach(group.names, id: \.self) { name in
                        Text(name)
                    }
                }
            }
        }
        
    }
}

struct BolumluListView_Previews: PreviewProvider {
    static var previews: some View {
        BolumluListView()
    }
}
