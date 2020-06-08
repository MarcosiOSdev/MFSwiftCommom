//
//  View+ViewToAny.swift
//  WeatherApp
//
//  Created by Marcos Felipe Souza on 02/06/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
   ///Use View with View.any
   var any: AnyView {
      AnyView(self)
   }
}
