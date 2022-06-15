//
//  ViewController.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy on 09/06/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowDataView" {
            if let hc = segue.destination as? ShowDataViewHostingViewController {
                hc.rootView = ShowDataView(dataTextField: dataTextField)
            }
        }
    }


    @IBAction func openSwiftUiWithCode(_ sender: Any) {
        let profileView = UIHostingController(rootView: ProfileView())
        navigationController?.pushViewController(profileView, animated: true)
    }
}

