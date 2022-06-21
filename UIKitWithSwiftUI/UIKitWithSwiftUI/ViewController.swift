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
   
    @IBOutlet weak var nameLabel: UILabel!
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
    
    @IBAction func passDataToSwiftUiWithCode(_ sender: Any) {
        let view = ShowDataViewWithCode(dataPassedIn: dataTextField.text ?? "")
        let dataView = UIHostingController(rootView: view)
        navigationController?.pushViewController(dataView, animated: true)

    }
    
    @IBAction func enterNameButton(_ sender: Any) {
        let view = SendDataBackToUIViewController { [weak self] name in
            guard let self = self else { return }
            self.nameLabel.text = name
            self.navigationController?.popViewController(animated: true)
        }
        let nameView = UIHostingController(rootView: view)
        navigationController?.pushViewController(nameView, animated: true)

    }
    
    @IBAction func openComplexUIView(_ sender: Any) {
        let view = ComplexUIView()
        let hc = UIHostingController(rootView: view)
        navigationController?.pushViewController(hc, animated: true)

    }
    
}

