import SwiftUI

struct ConnectorCellView: View {
    var body: some View {
        let widthSize = UIScreen.main.bounds.width
        
        Rectangle()
            .frame(width: widthSize * 0.01)
            .aspectRatio(5, contentMode: .fit)
    }
}

struct ConnectorCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectorCellView()
    }
}
