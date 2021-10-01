import SwiftUI

struct TimeLineCollectionView: View {
    var body: some View {        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(0..<5) { i in
                    if i % 2 == 0 {
                        YearRightCellView(year: i + 2000).onTapGesture { openProjectDetails() }
                    }
                    else {
                        YearLeftCellView(year: i + 2000).onTapGesture { openProjectDetails() }
                    }
                    if i != 4 {
                        ConnectorCellView()
                    }
                }
            }
        }
    }
}

class TimeLineCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineCollectionView()
    }
}
