import SwiftUI

struct PortfolioView: View {
    @State var showingScreen: Screen = .timeLine
    @State var selectedYear: Int
    
    @ObservedObject var viewModel = ProjectsListViewModel()
    
    var body: some View {
        switch showingScreen {
        case .timeLine:
            AnyView(TimeLineCollectionView(showingScreen: $showingScreen, yearSelected: $selectedYear))
        case .projectInsert:
            AnyView(AddNewProject(showingScreen: $showingScreen))
        default:
            AnyView(ProjectsView(showingScreen: $showingScreen, selecetedYear: $selectedYear))
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView(selectedYear: 2021)
    }
}


