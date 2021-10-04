import Foundation

class ProjectsListViewModel: ObservableObject {
    @Published var projectsList: [ProjectDetails] = StaticData().portfolio.projects
}
