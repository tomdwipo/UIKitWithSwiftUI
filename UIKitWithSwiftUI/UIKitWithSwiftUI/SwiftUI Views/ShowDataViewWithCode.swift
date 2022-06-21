//
//  ShowDataViewWithCode.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 16/06/22.
//

import SwiftUI

struct ShowDataViewWithCode: View {
    var dataPassedIn: String = "no data passed in"
    var body: some View {
        if #available(iOS 14.0, *) {
            
            VStack {
                Text("Here is the data passed in:")
                Text(dataPassedIn)
                    .fontWeight(.bold)
            }
            .navigationTitle("Show Data with Code")
        } 
    }
}

struct ShowDataViewWithCode_Previews: PreviewProvider {
    static var previews: some View {
        ShowDataViewWithCode()
    }
}
