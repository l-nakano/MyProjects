import SwiftUI

struct LinksStackView: View {
    let store,
        repository,
        design,
        video: String
    
    var body: some View {
        HStack {
            if store != "" { LinkButtonView(systemImage: "bag.circle", url: store) }
            if repository != "" { LinkButtonView(systemImage: "hammer.circle", url: repository) }
            if design != "" { LinkButtonView(systemImage: "photo.circle", url: design) }
            if video != "" { LinkButtonView(systemImage: "play.circle", url: video) }
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
