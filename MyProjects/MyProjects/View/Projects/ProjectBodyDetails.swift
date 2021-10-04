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

struct ProjectBodyDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProjectBodyDetails(description: "Descrição do projeto", design: "Design do projeto", process: "Processos do projeto", technologies: ["Tech1", "Tech2"])
    }
}
