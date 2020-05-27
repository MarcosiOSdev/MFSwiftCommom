//
//  Data+PrettyPrint.swift
//
//  Created by Marcos Felipe Souza on 07/04/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import Foundation
public extension Data {
    
    /// return NSString from JSON type of Data
    /// NSString gives us a nice sanitized debugDescription
    var prettyPrintedJSONString: NSString? { 
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }

        return prettyPrintedString
    }
}
