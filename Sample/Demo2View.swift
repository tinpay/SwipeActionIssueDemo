//
//  Demo2View.swift
//  Sample
//  
//  Created by Shohei Fukui on 2023/01/15
//  
//

import SwiftUI

struct Demo2View: View {
    var body: some View {
        List {
            Text("DemoView2")
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

struct Demo2View_Previews: PreviewProvider {
    static var previews: some View {
        Demo2View()
    }
}
