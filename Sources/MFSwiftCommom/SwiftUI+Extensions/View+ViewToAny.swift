import SwiftUI

extension View {

   ///Use View with View.any
   var any: AnyView {
      AnyView(self)
   }
}