import Foundation

class ProjectsListViewModel: ObservableObject {
    @Published var projectsList: [ProjectDetails] = StaticData().portfolio.projects
    @Published var selectedProject: ProjectDetails = StaticData().portfolio.projects.first!
    
    func getProjectYear(_ project: ProjectDetails) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return Int(formatter.string(from: project.date))!
    }
    
    func getProjectsByYear(_ year: Int) -> [ProjectDetails] {
        return self.projectsList.filter {
            getProjectYear($0) == year
        }
    }
}
