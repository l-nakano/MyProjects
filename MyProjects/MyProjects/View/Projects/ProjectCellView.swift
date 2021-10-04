import SwiftUI

struct ProjectCellView: View {
    var project: ProjectDetails
    
    var body: some View {
        project.images.first!
            .resizable()
            .frame(width: nil)
            .aspectRatio(185/227, contentMode: .fit)
    }
}

struct ProjectCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCellView(project: StaticData().portfolio.projects.first!)
    }
}
