import SwiftUI

struct MainToolbarContentView: ToolbarContent {
    @Binding var showingScreen: Screen
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            ToolbarButtonView(systemImage: "square.and.arrow.up.circle") {
                print("Compartilhar")
            }
        }
        ToolbarItem(placement: .principal) {
            ToolbarButtonView(systemImage: "pencil.circle") {
                print("Editar")
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            ToolbarButtonView(systemImage: "plus.circle") {
                showingScreen = .projectInsert
            }
        }
    }
}
