//
//  String+Capitalized.swift
//
//  Created by Marcos Felipe Souza on 14/04/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import Foundation

public extension String {

    ///Get the String with all first letters between space in capital letters
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    ///Change the same string with all first letters between space in capital letters
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
