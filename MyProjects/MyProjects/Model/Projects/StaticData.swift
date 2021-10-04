import SwiftUI

struct StaticData {
    let portfolio = Portfolio(
        title: "Meu Portfólio da ADA",
        description: "Projetos dos meus Crash Challenges",
        projects: [
            ProjectDetails(
                title: "A escolha do futuro - Crash Challenge 1",
                description: "Escolha do Futuro é um app para ensinar a importância da saúde financeira na vida das pessoas e o quão importante é manter uma vida financeiramente equilibrada.",
                technologies: ["UIKit", "Swift"],
                design: "Recursos minimalistas, com imagens que lebram finanças (real estate, reserva de emergência, mercado de ações, lucro). Ícone que remeta à finanças e poupar: cofre de porquinho.",
                process: "ENGAGE\n\nBig Idea: Finanças pessoais\nEssential Question: Como mostrar a importância da saúde financeira?\nChallenge: Desenvolver uma app de história interativa com o objetivo de impactar positivamente a saúde financeira das pessoas.\n\nSTORYTELLING\n\nCriado no Twinery para validação das história e das escolhas.\n\nPROGRAMAÇÃO\n\nBaseado em estrutura MVC, utilizando UIKit. Foram criadas 4 telas com uso de Storyboard, cada uma com seu respectivo controlador.",
                images: [Image(uiImage: UIImage(named: "Background1x")!), Image(uiImage: UIImage(named: "InitialScreen1x")!), Image(uiImage: UIImage(named: "Icon180px")!)],
                date: "25/07/2021",
                repositoryLink: "https://github.com/lynakano/EscolhaDoFuturo",
                videoLink: "https://youtu.be/_9B1Cj6vK7A"),
            ProjectDetails(
                title: "Time's Up! Quiz - Crash Challenge 2",
                description: "Time's Up! Quiz é um app para ensinar e entreter, desenvolvendo o conhecimento e o raciocínio rápido dos jogadores. É um jogo de quiz contra o relógio!",
                technologies: ["UIKit", "Swift"],
                design: "Recursos simples, com poucas imagens e mais formas, que estarão presentes para encapsular alguma informação ou representá-la de forma visual. Paleta de cores clara. Utilizado o conceito de 60-30-10.",
                process: "ENGAGE\n\nBig Idea: Educação\nEssential Question: Como unir educação e entretenimento de forma harmônica?\nChallenge: Desenvolver app de quiz com objetivo de ensinar e ao mesmo tempo divertir o usuário.\n\nQ&A\n\nEscolhido para formar um repossitório de questões de conhecimento geral.\n\nPROGRAMAÇÃO\n\nBaseado em estrutura MVC, utilizando UIKit e Singleton.\n\nREGRAS\n\nRegras feitas para dar dinâmica e não prejudicar muito o jogador ao errar alguma resposta.",
                images: [Image(uiImage: UIImage(named: "HomePage")!), Image(uiImage: UIImage(named: "GameLayout")!), Image(uiImage: UIImage(named: "GameFinish")!)],
                date: "02/08/2021",
                repositoryLink: "https://github.com/lynakano/TimesUp",
                videoLink: "https://youtu.be/MWB_1TDOyeQ")
        ])
}
