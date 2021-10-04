import SwiftUI

struct PortfolioView: View {
    @State var showingScreen: Screen = .timeLine
    
    var body: some View {
        switch showingScreen {
        case .timeLine:
            AnyView(TimeLineCollectionView(showingScreen: $showingScreen))
        default:
            AnyView(ProjectsView(showingScreen: $showingScreen))
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}


