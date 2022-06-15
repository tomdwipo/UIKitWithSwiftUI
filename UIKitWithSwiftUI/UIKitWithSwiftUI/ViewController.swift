//
//  ViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy on 09/06/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func openSwiftUiWithCode(_ sender: Any) {
        let profileView = UIHostingController(rootView: ProfileView())
        navigationController?.pushViewController(profileView, animated: true)
    }
}

