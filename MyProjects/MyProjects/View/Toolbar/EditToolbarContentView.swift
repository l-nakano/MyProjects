import SwiftUI

struct EditToolbarContentView: ToolbarContent {
    @Binding var showingScreen: Screen
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            ToolbarButtonView(systemImage: "x.circle") {
                showingScreen = .projects
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            ToolbarButtonView(systemImage: "checkmark.circle") {
                showingScreen = .projects
            }
        }
    }
}
