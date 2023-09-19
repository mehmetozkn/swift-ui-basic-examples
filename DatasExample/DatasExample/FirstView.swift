//
//  FirstView.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct FirstView: View {
    @State var num = 0
    @State var goster = false

    var body: some View {
        VStack {

            HStack {
                Button(action: {
                    self.num -= 1
                    
                }, label: { Text("-").font(.largeTitle) })
                
                Text(String(num))
                    .font(.largeTitle)
                
                Button(action: {

                    self.num += 1

                }, label: { Text("+").font(.largeTitle) })
            }

            Button(action: {
                self.goster.toggle()
            }, label: {
                Text("Go To Second View")
                    .padding()
                    .sheet(isPresented: self.$goster,
                           content: {
                        SecondView()
                    })
            })


        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
