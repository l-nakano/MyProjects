import SwiftUI

struct ProjectsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<10) { i in
                HStack {
                    ForEach(0..<3) { j in
                        ProjectCellView(numberOfColumns: 3)
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, 20)
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
