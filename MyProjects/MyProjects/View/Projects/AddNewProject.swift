import SwiftUI

struct AddNewProject: View {
    @Binding var showingScreen: Screen
    
    @State var title: String = ""
    @State var appStoreLink: String = ""
    @State var repositoryLink: String = ""
    @State var designLink: String = ""
    @State var videoLink: String = ""
    @State var description: String = ""
    @State var technologies: String = ""
    @State var design: String = ""
    @State var process: String = ""
    @State var date = Date()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                TitleText(text: "Título")
                addTextInput(insideText: "Título do Projeto", bindingVar: $title)
                links
                TitleText(text: "Data do Projeto")
                projectDate
                bodyInformation
            }.padding(.top, 20)
            .toolbar {
                EditToolbarContentView(showingScreen: $showingScreen)
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var links: some View {
        VStack {
            TitleText(text: "Links")
            addLink(systemName: "bag.circle", text: "App Store Link", bindingVar: $appStoreLink)
            addLink(systemName: "hammer.circle", text: "Repository Link", bindingVar: $repositoryLink)
            addLink(systemName: "photo.circle", text: "Design Link", bindingVar: $designLink)
            addLink(systemName: "play.circle", text: "Video Link", bindingVar: $videoLink)
        }
    }
    
    var projectDate: some View {
        HStack {
            Image(systemName: "calendar.circle")
                .resizable()
                .frame(height: ScreenSize.width * 0.08)
                .aspectRatio(1, contentMode: .fit)
            DatePicker("", selection: $date, displayedComponents: .date)
        }
        .frame(width: ScreenSize.width * 0.8)
    }
    
    var bodyInformation: some View {
        VStack {
            TitleText(text: "Descrição")
            addTextInput(insideText: "Descrição do Projeto", bindingVar: $description)
            TitleText(text: "Tecnologias")
            addTextInput(insideText: "Tecnologias do Projeto", bindingVar: $technologies)
            TitleText(text: "Design")
            addTextInput(insideText: "Design do Projeto", bindingVar: $design)
            TitleText(text: "Processo")
            addTextInput(insideText: "Processo do Projeto", bindingVar: $process)
        }
    }
}

struct addTextInput: View {
    let insideText: String
    @Binding var bindingVar: String
    
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .strokeBorder(lineWidth: 3)
                .frame(width: ScreenSize.width * 0.8)
                .aspectRatio(2, contentMode: .fit)
            TextField(insideText, text: $bindingVar)
                .font(.body)
                .frame(width: ScreenSize.width * 0.75, height: ScreenSize.width * 0.35, alignment: .topLeading)
        }
    }
}

struct addLink: View {
    let systemName: String
    let text: String
    
    @Binding var bindingVar: String
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .resizable()
                .frame(height: ScreenSize.width * 0.08)
                .aspectRatio(1, contentMode: .fit)
            ZStack(alignment: .center) {
                Rectangle()
                    .strokeBorder(lineWidth: 3)
                    .frame(width: ScreenSize.width * 0.7)
                    .aspectRatio(5, contentMode: .fit)
                TextField(text, text: $bindingVar)
                    .font(.body)
                    .frame(width: ScreenSize.width * 0.65, height: ScreenSize.width * 0.05, alignment: .topLeading)
            }
        }.frame(width: ScreenSize.width * 0.8)
    }
}

struct AddNewProject_Previews: PreviewProvider {
    static var previews: some View {
        AddNewProject(showingScreen: .constant(.projectInsert))
    }
}
