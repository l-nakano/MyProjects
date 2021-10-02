import SwiftUI

struct ConnectorCellView: View {
    var body: some View {
        Rectangle()
            .frame(width: ScreenSize.width * 0.01)
            .aspectRatio(5, contentMode: .fit)
    }
}

struct ConnectorCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectorCellView()
    }
}
