//
//  ProjectBodyDetails.swift
//  MyProjects
//
//  Created by Lucas Yoshio Nakano on 01/10/21.
//

import SwiftUI

struct ProjectBodyDetails: View {
    var body: some View {
        VStack {
            TitleText(text: "Descrição")
            BodyText(text: "Lorem ipsum dolor sit amet consectetur adipiscing elit.\nLorem ipsum dolor sit amet consectetur adipiscing elit.")
            TitleText(text: "Tecnologias")
            BodyText(text: "Lorem ipsum dolor sit amet consectetur adipiscing elit.")
            TitleText(text: "Design")
            BodyText(text: "Lorem ipsum dolor sit amet consectetur adipiscing elit.\nLorem ipsum dolor sit amet consectetur adipiscing elit.")
            TitleText(text: "Processo")
            BodyText(text: "Lorem ipsum dolor sit amet consectetur adipiscing elit.")
        }
    }
}

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
            .padding([.top, .bottom], 8)
    }
}

struct BodyText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
    }
}

struct ProjectBodyDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectBodyDetails()
    }
}
