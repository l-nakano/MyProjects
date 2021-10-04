import SwiftUI

struct PortfolioView: View {
    @State var showingScreen: Screen = .timeLine
    @State var selectedYear: Int
    
    var body: some View {
        switch showingScreen {
        case .timeLine:
            AnyView(TimeLineCollectionView(showingScreen: $showingScreen, yearSelected: $selectedYear))
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


