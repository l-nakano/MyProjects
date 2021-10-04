import SwiftUI

struct ProjectCellView: View {
    var project: ProjectDetails
    
    var body: some View {
        project.images.first!
            .resizable()
            .frame(width: nil)
            .aspectRatio(185/227, contentMode: .fit)
            .shadow(radius: 2, x: 0, y: 5)
    }
}

struct ProjectCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCellView(project: StaticData().portfolio.projects.first!)
    }
}
