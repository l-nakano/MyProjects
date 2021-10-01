import SwiftUI

struct ProjectsToolbarContentView: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            ToolbarButtonView(systemImage: "chevron.backward.circle") {
                print("Retornar")
            }
        }
        ToolbarItem(placement: .principal) {
            ToolbarButtonView(systemImage: "pencil.circle") {
                print("Editar")
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            ToolbarButtonView(systemImage: "plus.circle") {
                print("Adicionar")
            }
        }
    }
}
