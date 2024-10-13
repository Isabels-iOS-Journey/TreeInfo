//
//  ContentView.swift
//  TreeInfo
//
//  Created by Isabel Quijada on 03.10.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(TreeModel.all) { tree in
                NavigationLink {
                    TreeDetailView(tree: tree)
                } label: {
                    TreeCell(tree: tree)
                }
            }
            .navigationTitle("Trees")
        }
    }
}

#Preview {
    ContentView()
}
