import SwiftUI

struct PortfolioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 8) {
                    Text("Título do Portfólio")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .lineLimit(2)
                        .padding([.leading, .trailing], 40)
                    Text("Qualquer breve descrição sobre o portfólio")
                        .font(.title2)
                        .italic()
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.5)
                        .lineLimit(2)
                        .padding([.leading, .trailing], 20)
                }
                .padding([.top, .bottom], 90)
                TimeLineCollectionView()
            }
            .toolbar {
                ToolbarContentView()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
