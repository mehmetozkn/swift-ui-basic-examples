//
//  MyListView.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct MyListView: View {
    var myList = ["Mehmet", "Ali", "Osman"]
    
    var body: some View {
     /*
      List {
            ForEach(myList, id: \.self) { (element) in
                Text(element)
            }
        }
    */
        
        List(myList, id: \.self) { (element) in
            Text(element)
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
