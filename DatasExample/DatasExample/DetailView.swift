//
//  DetailView.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import SwiftUI

struct DetailView: View {
    var selected: MyModel
   @State  var done = false
    
    var body: some View {
        VStack {
            Text(selected.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(self.done ? .green : .red)
            
            Text(selected.content)
                .font(.title)
                .padding()
            
            MyDoneButton(done: $done)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selected: model1)
    }
}
