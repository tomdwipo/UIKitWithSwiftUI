//
//  VisualEffectView.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 21/06/22.
//

import SwiftUI

struct VisualEffectViewRepresentable: UIViewRepresentable {
    var blurStyle = UIBlurEffect.Style.systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
    
    
    
}

struct VisualEffectView: View {
    var body: some View {
        ZStack {
            Image("Utah")
            Text("Arches National Park")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(24)
                .background(VisualEffectViewRepresentable(blurStyle: UIBlurEffect.Style.dark))
        }
    }
}

struct VisualEffectView_Previews: PreviewProvider {
    static var previews: some View {
        VisualEffectView()
    }
}
