import SwiftUI

struct EditToolbarContentView: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            ToolbarButtonView(systemImage: "x.circle") {
                print("Cancelar")
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            ToolbarButtonView(systemImage: "checkmark.circle") {
                print("Confirmar")
            }
        }
    }
}
