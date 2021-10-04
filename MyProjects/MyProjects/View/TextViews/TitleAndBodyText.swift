import SwiftUI

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
            .padding([.top, .bottom], 8)
    }
}

struct BodyText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
    }
}
