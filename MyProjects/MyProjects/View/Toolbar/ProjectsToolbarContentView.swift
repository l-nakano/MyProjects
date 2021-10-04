import SwiftUI

struct ProjectsToolbarContentView: ToolbarContent {
    @Binding var showingScreen: Screen
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            ToolbarButtonView(systemImage: "chevron.backward.circle") {
                showingScreen = .timeLine
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
