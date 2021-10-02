import SwiftUI

struct LinksStackView: View {
    var body: some View {
        HStack {
            LinkButtonView(systemImage: "bag.circle") {
                print("Acesso Loja")
            }
            LinkButtonView(systemImage: "hammer.circle") {
                print("Acesso Repositório Programação")
            }
            LinkButtonView(systemImage: "photo.circle") {
                print("Acesso Repositório Design")
            }
            LinkButtonView(systemImage: "play.circle") {
                print("Acesso Vídeo")
            }
        }
        .frame(maxWidth: ScreenSize.width * 0.6)
    }
}

struct LinksStackView_Previews: PreviewProvider {
    static var previews: some View {
        LinksStackView()
    }
}
