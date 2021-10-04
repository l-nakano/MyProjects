import SwiftUI

struct YearLeftCellView: View {
    @State var activeImageIndex = 0
    
    @ObservedObject var viewModel = ProjectsListViewModel()
    
    var year: Int
    let imageSwitchTimer = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
    
    var body: some View {
        let images = viewModel.getProjectsByYear(year).map{ $0.images.first! }
        HStack(spacing: 0) {
            Text(String(year))
                .padding(8)
                .font(.system(size: 60))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .frame(width: ScreenSize.width * 0.35, height: ScreenSize.height * 0.3)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
            images[activeImageIndex]
                .resizable()
                .onReceive(imageSwitchTimer) { _ in
                        self.activeImageIndex = (self.activeImageIndex + 1) % images.count
                    }
                .frame(width: ScreenSize.width * 0.55, height: ScreenSize.height * 0.3)
                .cornerRadius(20, corners: [.topRight, .bottomRight])
        }
    }
}

struct YearLeftCellView_Previews: PreviewProvider {
    static var previews: some View {
        YearLeftCellView(year: 2021)
    }
}
