import SwiftUI

struct ToolbarContentView: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button(action: {}) {
                Image(systemName: "minus.square.fill")
                    .font(.largeTitle)
            }
            .foregroundColor(.pink)
            .padding(.bottom, 8)
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {}) {
                Image(systemName: "plus.square.fill")
                    .font(.largeTitle)
            }
            .foregroundColor(.blue)
            .padding(.bottom, 8)
        }
    }
}
