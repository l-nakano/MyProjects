import SwiftUI

class PortfoliosListViewModel: ObservableObject {
    @Published var portfoliosList: [Portfolio] = [StaticData().portfolio]
}
