import SwiftUI

struct ProjectBodyDetails: View {
    var description: String
    var design: String
    var process: String
    var technologies: [String]
    
    var body: some View {
        VStack {
            TitleText(text: "Descrição")
            BodyText(text: description)
            TitleText(text: "Tecnologias")
            BodyText(text: technologies.joined(separator: ", "))
            TitleText(text: "Design")
            BodyText(text: design)
            TitleText(text: "Processo")
            BodyText(text: process)
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
        ProjectBodyDetails(description: "Descrição do projeto", design: "Design do projeto", process: "Processos do projeto", technologies: ["Tech1", "Tech2"])
    }
}
