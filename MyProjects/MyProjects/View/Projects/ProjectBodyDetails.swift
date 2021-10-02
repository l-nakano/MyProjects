//
//  ProjectBodyDetails.swift
//  MyProjects
//
//  Created by Lucas Yoshio Nakano on 01/10/21.
//

import SwiftUI

struct ProjectBodyDetails: View {
    let projectYear: Int
    
    var body: some View {
        VStack {
            ProjectTitleText(text: "Título do Projeto")
            BodyText(text: String(projectYear))
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

struct ProjectTitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
    }
}

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .frame(width: ScreenSize.width * 0.8, alignment: .leading)
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
        ProjectBodyDetails(projectYear: 2021)
    }
}
