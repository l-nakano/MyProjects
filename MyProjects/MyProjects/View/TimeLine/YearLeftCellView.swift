import SwiftUI

struct YearLeftCellView: View {
    
    var year: Int
    
    var body: some View {
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
            ZStack {
                Rectangle()
                    .foregroundColor(Color.blue)
                Image(uiImage: UIImage(systemName: "photo")!)
                    .resizable()
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
