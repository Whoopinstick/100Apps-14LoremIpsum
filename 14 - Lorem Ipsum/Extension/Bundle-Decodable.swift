//
//  Bundle-Decodable.swift
//  14 - Lorem Ipsum
//
//  Created by Kevin Paul on 8/29/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import Foundation

extension Bundle {
    func decode() -> String {
        if let filepath = Bundle.main.path(forResource: "LoremIpsum", ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                //print(contents)
                return contents
            } catch {
                // contents could not be loaded
            }
        } else {
            // example.txt not found!
        }
        return "failed to load the contents"
    }
    
}
