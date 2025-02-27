//
//  TreeDetailView.swift
//  TreeInfo
//
//  Created by Isabel Quijada on 03.10.24.
//

import SwiftUI

struct TreeDetailView: View {
    let tree: TreeModel

    var body: some View {
        List {
            Section {
                GeometryReader { proxy in
                    Image(tree.image)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: proxy.size.width,
                            height: proxy.size.width
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .clipped()
                }
                .scaledToFit()
            }

            Section("Details") {
                LabeledContent("Family", value: tree.family)
                Text(tree.description)
            }
        }
        .navigationTitle(tree.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        TreeDetailView(tree: .palmTree)
    }
}
