import SwiftUI

struct ProjectsView: View {
    @Binding var showingScreen: Screen
    @State var isShowingDetail: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<10) { i in
                    HStack {
                        ForEach(0..<3) { j in
                            ProjectCellView(numberOfColumns: 3).onTapGesture {
                                isShowingDetail.toggle()
                                showingScreen = .projectDetails
                            }.sheet(isPresented: $isShowingDetail, onDismiss: {
                                showingScreen = .projects
                            }) {
                                ProjectDetailsView(projectYear: 2021)
                            }
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .padding(.top, 20)
            .toolbar {
                ProjectsToolbarContentView(showingScreen: $showingScreen)
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView(showingScreen: .constant(.projects))
    }
}
