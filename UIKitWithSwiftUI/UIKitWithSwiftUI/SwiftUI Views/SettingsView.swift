//
//  SettingsView.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy on 15/06/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

class SettingsViewHostingController: UIHostingController<SettingsView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(rootView: SettingsView())
    }
}
