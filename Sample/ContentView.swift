//
//  ContentView.swift
//  Sample
//  
//  Created by Shohei Fukui on 2023/01/14
//  
//

import SwiftUI

struct ContentView: View {
    @Environment(\.editMode) var editMode
    @State var viewMode: Int = 0

    var body: some View {
        VStack {
            HStack {
                Button {
                    viewMode = 0
                    // editMode to .inactive
                    editMode?.wrappedValue = .inactive
                } label: {
                    Text("View1")
                }
                Spacer()
                    .frame(width: 30)
                Button {
                    viewMode = 1
                    // editMode to .inactive
                    editMode?.wrappedValue = .inactive
                } label: {
                    Text("View2")
                }
            }
            if viewMode == 0 {
                Demo1View()
            } else {
                Demo2View()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
