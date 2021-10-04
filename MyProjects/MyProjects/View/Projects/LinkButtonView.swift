import SwiftUI

struct LinkButtonView: View {
    let systemImage: String
    let url: String
    
    var body: some View {
        Button(action: {
            if let url = URL(string: url) {
                UIApplication.shared.open(url)
            }
        }) {
            Image(systemName: systemImage)
                .resizable()
        }
        .frame(width: nil)
        .aspectRatio(1, contentMode: .fit)
        .padding(8)
        .foregroundColor(.black)
        .shadow(radius: 2, x: 0, y: 3)
    }
}

struct LinkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LinkButtonView(systemImage: "bag.circle", url: "qualquer")
    }
}
