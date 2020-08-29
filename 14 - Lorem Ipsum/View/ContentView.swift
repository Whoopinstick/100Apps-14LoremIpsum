//
//  ContentView.swift
//  14 - Lorem Ipsum
//
//  Created by Kevin Paul on 8/29/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let loremIpsumText: String = Bundle.main.decode()
    let displayChoices = ["Paragraphs","Sentences","Words"]
    @State private var displaySelection = 0
    @State private var paragraphCount = 1
    @State private var sentenceCount = 1
    @State private var wordCount = 1
    var loremIpsumDisplay: String {
        //paragraphs
        if displaySelection == 0 {
            let paragraphs = loremIpsumText.components(separatedBy: "\n")
            var returnValue = ""
            var counter = 0
            while counter < paragraphCount {
                returnValue += paragraphs[counter]
                returnValue += "\n"
                returnValue += "\n"
                counter += 1
            }
            return returnValue
        //sentences
        } else if displaySelection == 1 {
            let sentences = loremIpsumText.components(separatedBy: ". ")
            var returnValue = ""
            var counter = 0
            while counter < sentenceCount {
                returnValue += sentences[counter]
                returnValue += ". "
                counter += 1
            }
            return returnValue
        //words
        } else {
            let words = loremIpsumText.components(separatedBy: " ")
            var returnValue = ""
            var counter = 0
            while counter < wordCount {
                returnValue += words[counter]
                returnValue += " "
                counter += 1
            }
            return returnValue
        }
        
    }
    
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
                        Stepper("\(paragraphCount) Paragraph(s)", value: $paragraphCount, in: 1...5)
                            .padding(.bottom)
                    } else if displaySelection == 1{
                        Stepper("\(sentenceCount) Sentence(s)", value: $sentenceCount, in: 1...10)
                            .padding(.bottom)
                    } else {
                        Stepper("\(wordCount) Word(s)", value: $wordCount, in: 1...85)
                            .padding(.bottom)
                    }
                    
                    Text("\(loremIpsumDisplay)")
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
