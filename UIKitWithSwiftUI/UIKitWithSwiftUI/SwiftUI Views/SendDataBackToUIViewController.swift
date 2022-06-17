//
//  SendDataBackToUIViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 17/06/22.
//

import SwiftUI

struct SendDataBackToUIViewController: View {
    var sendBackName: ((String) -> ())?
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Enter name:")
            TextField("name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                guard let sendBackName = sendBackName else { return }
                sendBackName(name)
            } label: {
                Text("Update Name")
            }

        }
    }
}

struct SendDataBackToUIViewController_Previews: PreviewProvider {
    static var previews: some View {
        SendDataBackToUIViewController()
    }
}
