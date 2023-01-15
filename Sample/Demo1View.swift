//
//  Demo1View.swift
//  Sample
//  
//  Created by Shohei Fukui on 2023/01/15
//  
//

import SwiftUI

struct Demo1View: View {
    var body: some View {
        List {
            Text("DemoView1")
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button {
                        print()
                    } label: {
                        Text("Action")
                    }
                    .tint(.red)
                }
        }.listStyle(PlainListStyle())

    }
}

struct Demo1View_Previews: PreviewProvider {
    static var previews: some View {
        Demo1View()
    }
}
