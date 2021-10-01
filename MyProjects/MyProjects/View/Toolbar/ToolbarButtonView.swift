import SwiftUI

struct ToolbarButtonView: View {
    var systemImage: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .font(.largeTitle)
        }
        .foregroundColor(.black)
        .padding(.bottom, 10)
    }
}

struct ToolbarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButtonView(systemImage: "plus.circle", action: {})
    }
}
