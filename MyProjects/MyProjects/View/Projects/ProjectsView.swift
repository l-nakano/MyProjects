import SwiftUI

struct ProjectsView: View {
    @Binding var showingScreen: Screen
    @Binding var selecetedYear: Int
    
    @State var isShowingDetail: Bool = false
    @State var selectedProject: Int = 0
    
    @ObservedObject var viewModel = ProjectsListViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<Int(ceil(Double(viewModel.getProjectsByYear(selecetedYear).count) / 3.0))) { i in
                    HStack {
                        ForEach(0..<3) { j in
                            if i * 3 + j < viewModel.getProjectsByYear(selecetedYear).count {
                                ProjectCellView(project: viewModel.getProjectsByYear(selecetedYear)[i * 3 + j]).onTapGesture {
                                    selectedProject = i * 3 + j
                                    isShowingDetail.toggle()
                                    showingScreen = .projectDetails
                                }.sheet(isPresented: $isShowingDetail, onDismiss: {
                                    showingScreen = .projects
                                }) {
                                    ProjectDetailsView(project:  viewModel.getProjectsByYear(selecetedYear)[selectedProject])
                                }
                            } else {
                                Rectangle()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .padding(.top, 20)
            .frame(width: ScreenSize.width * 0.9)
            .toolbar {
                ProjectsToolbarContentView(showingScreen: $showingScreen)
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView(showingScreen: .constant(.projects), selecetedYear: .constant(2021))
    }
}
