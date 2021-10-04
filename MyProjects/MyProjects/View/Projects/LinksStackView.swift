import SwiftUI

struct LinksStackView: View {
    let store,
        repository,
        design,
        video: String
    
    var body: some View {
        HStack {
            if store != "" {
                LinkButtonView(systemImage: "bag.circle") {
                    if let url = URL(string: store) {
                        UIApplication.shared.open(url)
                    }
                }
            }
            if repository != "" {
                LinkButtonView(systemImage: "hammer.circle") {
                    if let url = URL(string: repository) {
                        UIApplication.shared.open(url)
                    }
                }
            }
            if design != "" {
                LinkButtonView(systemImage: "photo.circle") {
                    if let url = URL(string: design) {
                        UIApplication.shared.open(url)
                    }
                }
            }
            if video != "" {
                LinkButtonView(systemImage: "play.circle") {
                    if let url = URL(string: video) {
                        UIApplication.shared.open(url)
                    }
                }
            }
        }
        .frame(maxWidth: ScreenSize.width * 0.6, maxHeight: 50)
    }
}

struct LinksStackView_Previews: PreviewProvider {
    static var previews: some View {
        LinksStackView(store: "",
                       repository: StaticData().portfolio.projects.first!.repositoryLink,
                       design: "",
                       video: StaticData().portfolio.projects.first!.videoLink)
    }
}
