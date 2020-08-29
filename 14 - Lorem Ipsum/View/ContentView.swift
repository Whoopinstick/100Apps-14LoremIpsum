//
//  ContentView.swift
//  14 - Lorem Ipsum
//
//  Created by Kevin Paul on 8/29/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let displayChoices = ["Paragraphs","Words"]
    @State private var displaySelection = 0
    @State private var paragraphCount = 0
    @State private var wordCount = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Picker("", selection: $displaySelection) {
                        ForEach(0..<displayChoices.count) { item in
                            Text("\(self.displayChoices[item])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.bottom)
                    
                    if displaySelection == 0 {
                        Stepper("\(paragraphCount) Paragraph(s)", value: $paragraphCount, in: 0...5)
                        .padding(.bottom)
                    } else {
                        Stepper("\(wordCount) Word(s)", value: $wordCount, in: 0...5)
                        .padding(.bottom)
                    }
                    
                    
                    Text("The lorem ipsum text goes here")
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
