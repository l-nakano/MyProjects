import SwiftUI

struct ProjectCellView: View {
    let numberOfColumns: CGFloat!
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .frame(width: screenWidth / numberOfColumns - 20)
            .aspectRatio(1, contentMode: .fit)
    }
}

struct ProjectCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCellView(numberOfColumns: 3)
    }
}
