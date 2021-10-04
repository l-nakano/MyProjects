import SwiftUI

struct TimeLineCollectionView: View {
    @Binding var showingScreen: Screen
    @Binding var yearSelected: Int
    
    @ObservedObject var portfolioViewModel = PortfoliosListViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                TitleAndSubTitle
                YearsCollectionView
            }
            .toolbar {
                MainToolbarContentView()
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var TitleAndSubTitle: some View {
        VStack(spacing: 8) {
            Text(portfolioViewModel.portfoliosList.first!.title)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .lineLimit(2)
                .padding([.leading, .trailing], 40)
            Text(portfolioViewModel.portfoliosList.first!.description)
                .font(.title2)
                .italic()
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .lineLimit(2)
                .padding([.leading, .trailing], 20)
        }.padding([.top, .bottom], 90)
    }
    
    var YearsCollectionView: some View {
        VStack(spacing: 0) {
            ForEach(0..<portfolioViewModel.getYearsList.count) { i in
                if i % 2 == 0 {
                    YearRightCellView(year: portfolioViewModel.getYearsList[i]).onTapGesture {
                        print(portfolioViewModel.getYearsList)
                        yearSelected = portfolioViewModel.getYearsList[i]
                        showingScreen = .projects
                    }
                }
                else {
                    YearLeftCellView(year: portfolioViewModel.getYearsList[i]).onTapGesture {
                        yearSelected = portfolioViewModel.getYearsList[i]
                        showingScreen = .projects
                    }
                }
                if i != portfolioViewModel.getYearsList.count - 1 {
                    ConnectorCellView()
                }
            }
        }
    }
}

class TimeLineCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineCollectionView(showingScreen: .constant(.timeLine), yearSelected: .constant(2021))
    }
}
