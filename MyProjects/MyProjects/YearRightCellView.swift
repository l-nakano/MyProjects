//
//  ContentView.swift
//  MyProjects
//
//  Created by Lucas Yoshio Nakano on 30/09/21.
//

import SwiftUI

struct YearRightCellView: View {
    
    var year: Int
    
    var body: some View {
        let widthSize = UIScreen.main.bounds.width
        let heightSize = UIScreen.main.bounds.height
        
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .frame(width: widthSize * 0.6, height: heightSize * 0.3)
                .foregroundColor(.green)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft])
            Text(String(year))
                .padding()
                .font(.system(size: 100))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .frame(width: widthSize * 0.4, height: heightSize * 0.3)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(20, corners: [.topRight, .bottomRight])
        }
    }
}

struct YearRightCellView_Previews: PreviewProvider {
    static var previews: some View {
        YearRightCellView(year: 2021)
    }
}
