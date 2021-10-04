import SwiftUI

class PortfoliosListViewModel: ObservableObject {
    @Published var portfoliosList: [Portfolio] = [StaticData().portfolio]
    
    var getYearsList: [Int] {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return self.portfoliosList.first!.projects.map { Int(formatter.string(from: $0.date))! }
    }
}
