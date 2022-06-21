//
//  SafariSwiftUIView.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 21/06/22.
//

import SwiftUI
import SafariServices

struct SafariViewControllerRepresentable: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}


struct SafariSwiftUIView: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            SafariViewControllerRepresentable(url: URL(string: "https://bersamabelajar.tech")!)
                .ignoresSafeArea(edges: .vertical)
        }
    }
}

struct SafariSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SafariSwiftUIView()
    }
}
