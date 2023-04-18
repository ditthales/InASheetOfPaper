
import Foundation
import SwiftUI

struct ClearButton: View {
    var actionForDone: () -> ()
    
    var body: some View {
        Button(action: {
            
            actionForDone()
            
        }) {
            Image("clearButton")
        }
    }
}
