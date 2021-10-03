import SwiftUI

struct LinkButtonView: View {
    let systemImage: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .resizable()
        }
        .frame(width: nil)
        .aspectRatio(1, contentMode: .fit)
        .padding(8)
        .foregroundColor(.black)
    }
}

struct LinkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LinkButtonView(systemImage: "bag.circle", action: {})
    }
}
