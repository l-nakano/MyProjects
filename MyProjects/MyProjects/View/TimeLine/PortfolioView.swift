import SwiftUI

struct PortfolioView: View {
    @State var showingScreen: Screen = .timeLine
    @State var selectedYear: Int
    
    var body: some View {
        switch showingScreen {
        case .timeLine:
            AnyView(TimeLineCollectionView(showingScreen: $showingScreen, yearSelected: $selectedYear))
        case .projects:
            AnyView(ProjectsView(showingScreen: $showingScreen, selecetedYear: $selectedYear))
        default:
            AnyView(AddNewProject(showingScreen: $showingScreen))
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView(selectedYear: 2021)
    }
}


