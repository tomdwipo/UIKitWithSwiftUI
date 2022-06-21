//
//  LazyVGridExample.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 21/06/22.
//

import SwiftUI

struct LazyVGridExample: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 200))]) {
                    ForEach(0 ..< 50) { item in
                        VStack {
                            Circle().frame(width: 50, height: 50)
                            Text("Grid Item")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.yellow))
                        .frame(height: 120)
                    }
                }
            }
        }
    }
}

struct LazyVGridExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LazyVGridExample()
            LazyVGridExample()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
