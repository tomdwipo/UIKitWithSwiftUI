//
//  LazyVStackExample.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 21/06/22.
//

import SwiftUI

struct LazyVStackExample: View {
    var body: some View {
        ZStack {
            if #available(iOS 14.0, *) {
                Color.pink.ignoresSafeArea()
            
                ScrollView {
                    LazyVStack {
                        ForEach(0 ..< 50) { item in
                            VStack {
                                HStack {
                                    RoundedRectangle(cornerRadius: 5)
                                        .frame(width: 50, height: 50)
                                        .padding(.leading)
                                    Text("Row \(item)").font(.title).padding()
                                    Spacer()
                                }
                                Divider()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct LazyVStackExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackExample()
    }
}
