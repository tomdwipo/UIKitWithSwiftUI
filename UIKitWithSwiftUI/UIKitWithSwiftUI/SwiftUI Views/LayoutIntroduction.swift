//
//  LayoutIntroduction.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 17/06/22.
//

import SwiftUI

struct LayoutIntroduction: View {
    var body: some View {
        ZStack {
            if #available(iOS 14.0, *) {
                Color.blue.ignoresSafeArea()
            }
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 80.0, height: 80.0)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 80.0, height: 80.0)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 80.0, height: 80.0)
                Spacer()
                
                HStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 80.0, height: 80.0)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 80.0, height: 80.0)
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 80.0, height: 80.0)
                }

            }
        }
    }
}

struct LayoutIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        LayoutIntroduction()
    }
}
