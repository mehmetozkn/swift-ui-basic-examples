//
//  MyDoneButton.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct MyDoneButton: View {
    @Binding var done: Bool
    
    var body: some View {
        Button(action: {
            self.done.toggle()
        }, label: {
            Text("Yapıldı / Yapılmadı")
                .font(.title)
                .padding()
        })
    }
}


