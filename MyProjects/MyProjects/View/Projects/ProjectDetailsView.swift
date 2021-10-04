import SwiftUI

struct ProjectDetailsView: View {
    @State var activeImageIndex = 0
    
    let project: ProjectDetails
    let imageSwitchTimer = Timer.publish(every: 2, on: .main, in: .common)
            .autoconnect()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            project.images[activeImageIndex]
                .resizable()
                .frame(width: ScreenSize.width * 0.5)
                .aspectRatio(227/185, contentMode: .fit)
                .padding([.top, .bottom], 40)
                .onReceive(imageSwitchTimer) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % project.images.count
                }
            Text(project.title)
                .font(.largeTitle)
                .bold()
                .frame(width: ScreenSize.width * 0.9)
            Text(getYearFrom(project.date))
            LinksStackView(store: project.storeLink,
                           repository: project.repositoryLink,
                           design: project.designLink,
                           video: project.videoLink)
            ProjectBodyDetails(description: project.description,
                               design: project.design,
                               process: project.process,
                               technologies: project.technologies)
        }
    }
}

func getYearFrom(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy"
    return formatter.string(from: date)
}

struct ProjectDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailsView(project: StaticData().portfolio.projects[1])
    }
}
