//
//  ContentView.swift
//  14 - Lorem Ipsum
//
//  Created by Kevin Paul on 8/29/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Hello, World!")
                }
            .padding()
            }
        .navigationBarTitle("Lorem Ipsum")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
