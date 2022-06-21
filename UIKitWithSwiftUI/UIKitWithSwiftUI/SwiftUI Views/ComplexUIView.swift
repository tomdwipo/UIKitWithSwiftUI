//
//  ComplexUIView.swift
//  UIKitWithSwiftUI
//
//  Created by Tommy-amarbank on 19/06/22.
//

import SwiftUI

struct ComplexUIView: View {
    @State var searchText: String = ""
    var body: some View {
        ZStack {
            if #available(iOS 14.0, *) {
                Color(#colorLiteral(red: 0.9802613854, green: 0.9357292652, blue: 0.8715873361, alpha: 1)).ignoresSafeArea()
            }
            VStack(alignment: .leading, spacing: 20.0) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Jane Cooper")
                            .font(.title)
                        .fontWeight(.bold)
                        if #available(iOS 14.0, *) {
                            Text("Project Manager").font(.title3)
                        }
                    }
                    Spacer()
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 50.0, height: 50.0)
                }
                TextField("Search", text: $searchText)
                    .padding()
                    .background(Capsule().fill(.white))
                    .overlay(Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding()
                             , alignment: .trailing)
                Text("My Tasks")
                    .font(.title)
                    .fontWeight(.bold)
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 50.0, height: 50.0)
                    Text("To do")
                        .fontWeight(.bold)
                    Spacer()
                    Text("5 tasks")
                }
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 50.0, height: 50.0)
                    Text("In Progress")
                        .fontWeight(.bold)
                    Spacer()
                    Text("4 tasks")
                }
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 50.0, height: 50.0)
                    Text("Done")
                        .fontWeight(.bold)
                    Spacer()
                    Text("25 tasks")

                }
                VStack(alignment: .leading, spacing: 40.0) {
                    Text("Recently Assigned")
                        .font(.title)
                    .fontWeight(.bold)
                    Text("Mobile App").fontWeight(.bold)
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ")
                        
                    Text("12 Dec 2022")
                }
            }
            .padding()
        }
    }
}

struct ComplexUIView_Previews: PreviewProvider {
    static var previews: some View {
        ComplexUIView()
    }
}
