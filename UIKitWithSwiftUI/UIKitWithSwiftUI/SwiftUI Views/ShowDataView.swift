//
//  ShowDataView.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy on 15/06/22.
//

import SwiftUI

struct ShowDataView: View {
    var dataTextField: UITextField?
    
    var body: some View {
        VStack {
            Text("Here is the data passed in:")
            Text(dataTextField?.text ?? "no data passed in.")
                .fontWeight(.bold)
        }
    }
}

struct ShowDataView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDataView()
    }
}

class ShowDataViewHostingViewController: UIHostingController<ShowDataView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(rootView: ShowDataView())
    }
    
    
    deinit {
        print("Deallocated")
    }
}
