import SwiftUI

struct TimeLineCollectionView: View {
    @Binding var showingScreen: Screen
    @ObservedObject var viewModel = PortfoliosListViewModel()
    
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
            Text(viewModel.portfoliosList.first!.title)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .lineLimit(2)
                .padding([.leading, .trailing], 40)
            Text(viewModel.portfoliosList.first!.description)
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
            ForEach(0..<5) { i in
                if i % 2 == 0 {
                    YearRightCellView(year: i + 2000).onTapGesture {
                        showingScreen = .projects }
                }
                else {
                    YearLeftCellView(year: i + 2000).onTapGesture {
                        showingScreen = .projects }
                }
                if i != 4 {
                    ConnectorCellView()
                }
            }
        }
    }
}

class TimeLineCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineCollectionView(showingScreen: .constant(.timeLine))
    }
}
