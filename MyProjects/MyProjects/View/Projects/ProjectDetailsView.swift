import SwiftUI

struct ProjectDetailsView: View {
    let projectYear: Int
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Image(systemName: "photo")
                .resizable()
                .frame(width: ScreenSize.width * 0.5)
                .aspectRatio(227/185, contentMode: .fit)
                .padding([.top, .bottom], 40)
            LinksStackView()
            ProjectBodyDetails(projectYear: 2021)
        }
    }
}

struct ProjectDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailsView(projectYear: 2021)
    }
}
