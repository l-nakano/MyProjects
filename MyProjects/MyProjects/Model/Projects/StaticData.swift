import SwiftUI

struct StaticData {
    let portfolio = Portfolio(
        title: "Meu Portfólio de projetos",
        description: "Mix de projetos (ADA, faculdade e pessoal)",
        projects: [
            ProjectDetails(
                title: "A escolha do futuro - Crash Challenge 1",
                description: "Escolha do Futuro é um app para ensinar a importância da saúde financeira na vida das pessoas e o quão importante é manter uma vida financeiramente equilibrada.",
                technologies: ["UIKit", "Swift"],
                design: "Recursos minimalistas, com imagens que lebram finanças (real estate, reserva de emergência, mercado de ações, lucro). Ícone que remeta à finanças e poupar: cofre de porquinho.",
                process: "ENGAGE\n\nBig Idea: Finanças pessoais\nEssential Question: Como mostrar a importância da saúde financeira?\nChallenge: Desenvolver uma app de história interativa com o objetivo de impactar positivamente a saúde financeira das pessoas.\n\nSTORYTELLING\n\nCriado no Twinery para validação das história e das escolhas.\n\nPROGRAMAÇÃO\n\nBaseado em estrutura MVC, utilizando UIKit. Foram criadas 4 telas com uso de Storyboard, cada uma com seu respectivo controlador.",
                images: [Image(uiImage: UIImage(named: "InitialScreen1x")!), Image(uiImage: UIImage(named: "Background1x")!), Image(uiImage: UIImage(named: "Icon180px")!)],
                date: "25/07/2021",
                repositoryLink: "https://github.com/lynakano/EscolhaDoFuturo",
                videoLink: "https://youtu.be/_9B1Cj6vK7A"),
            ProjectDetails(
                title: "Time's Up! Quiz - Crash Challenge 2",
                description: "Time's Up! Quiz é um app para ensinar e entreter, desenvolvendo o conhecimento e o raciocínio rápido dos jogadores. É um jogo de quiz contra o relógio!",
                technologies: ["UIKit", "Swift"],
                design: "Recursos simples, com poucas imagens e mais formas, que estarão presentes para encapsular alguma informação ou representá-la de forma visual. Paleta de cores clara. Utilizado o conceito de 60-30-10.",
                process: "ENGAGE\n\nBig Idea: Educação\nEssential Question: Como unir educação e entretenimento de forma harmônica?\nChallenge: Desenvolver app de quiz com objetivo de ensinar e ao mesmo tempo divertir o usuário.\n\nQ&A\n\nEscolhido para formar um repossitório de questões de conhecimento geral.\n\nPROGRAMAÇÃO\n\nBaseado em estrutura MVC, utilizando UIKit e Singleton.\n\nREGRAS\n\nRegras feitas para dar dinâmica e não prejudicar muito o jogador ao errar alguma resposta.",
                images: [Image(uiImage: UIImage(named: "GameLayout")!), Image(uiImage: UIImage(named: "HomePage")!), Image(uiImage: UIImage(named: "GameFinish")!)],
                date: "02/08/2021",
                repositoryLink: "https://github.com/lynakano/TimesUp",
                videoLink: "https://youtu.be/MWB_1TDOyeQ"),
            ProjectDetails(
                title: "Start Training - TCC",
                description: "Start Training é um app utilizado em conjunto com um hardware para monitorar e registrar o tempo de partida do atleta em treinamentos de natação. Comunicação via BLE.",
                technologies: ["ARM", "Arduino", "Eletrônica", "C++"],
                design: "Nenhum design foi aplicado, foco na programação.",
                process: "PROGRAMAÇÃO\n\nFeita em ARM STM32, utilizando a IDE do Arduino. Utilização dos sinais dos sensores provenientes do \"tapete\" ara cálculo do tempo de partida do nadador. Utilizada também comunicação via Bluetooth Low Energy para conexão com dispositivo móvel.\n\nHARDWARE\n\n- Microcontrolador ARM STM32F103C8\n- Módulo BLE CC2541 HM-10\n- Sensores de pressão FSR402\n\nPROTÓTIPO\n\nFeito em material de boarracha para parecer com o bloco de partida e para absorção do impacto da partida, a fim de não dafinicar os sensores de pressão. Além disso, vedado para que não ocorra contato dos componentes eletrônicos com a água.",
                images: [Image(uiImage: UIImage(named: "PartidaCompleta")!), Image(uiImage: UIImage(named: "Partida2Tempos")!), Image(uiImage: UIImage(named: "ResultadoPartida")!)],
                date: "10/10/2018",
                videoLink: "https://1drv.ms/v/s!AjNGTKq3JjBGgdUs9D6h40Pot9CSXA"),
            ProjectDetails(
                title: "VU Meter - Arduino",
                description: "VU Meter (Volume Unit Meter) é um dispositivo que capta e representa o volume de um outro dispositivo, geralmente por meio de LEDs, mas também podendo ser analógico ou digital.",
                technologies: ["Arduino", "Eletrônica", "C"],
                design: "Nenhum design foi aplicado, foco na programação.",
                process: "PROGRAMAÇÃO\n\nRealizada no Arduino UNO, utilizando a IDE do próprio Arduino. De acordo com a frequência sonora proveniente de um dispositivo, o programa acende um LED a mais na esteira de LEDs. Necessária a conversão de frequência para sinal elétrico para que o dispositivo funcione corretamente.\n\nHARDWARE\n\n- Arduino UNO\n- Resistores\n- LEDs\n- Protoboard",
                images: [Image(uiImage: UIImage(named: "Aceso")!), Image(uiImage: UIImage(named: "Apagado")!)],
                date: "01/10/2015",
                videoLink: "https://1drv.ms/v/s!AjNGTKq3JjBGgdUp9D6h40Pot9CSXA"),
            ProjectDetails(
                title: "Robô Varredura Objetos",
                description: "Projeto feito para a matéria de Robótica Móvel, cujo intuito era fazer um robô de varredura para retirar todas as peças do tablado e as depositar em um local demarcado. Além disso, o robô teria que subir uma rampa para ter acesso ao tablado, porém ele estaria virado para qualquer lado no início da rampa e precisaria encontrar o caminho correto.",
                technologies: ["LEGO Mindstorm EV3", "Programação em Blocos"],
                design: "Nenhum design foi aplicado, foco na programação.",
                process: "PROGRAMAÇÃO\n\nRealizada em blocos, no swoftware disponível para programação do EV3 da LEGO. Os componentes utilizados são os disponíveis no kit (motores, atuadores, peças, etc.).",
                images: [Image(uiImage: UIImage(named: "Robo")!), Image(uiImage: UIImage(named: "MeioProcesso")!), Image(uiImage: UIImage(named: "FimProcesso")!)],
                date: "15/10/2014",
                videoLink: "https://1drv.ms/v/s!AjNGTKq3JjBGgdUn9D6h40Pot9CSXA"),
//            ProjectDetails(
//                title: "Projeto Teste",
//                description: "Projeto para demonstração de todas as funcionalidades de um projeto.",
//                technologies: ["Tech1", "Tech2", "Tech3"],
//                design: "O que falar sobre o design do projeto?",
//                process: "O que falar sobre o processo do projeto?",
//                images: [Image(uiImage: UIImage(systemName: "photo")!), Image(uiImage: UIImage(systemName: "photo.circle")!), Image(uiImage: UIImage(systemName: "person.fill")!)],
//                date: "01/01/2020",
//                storeLink: "https://apple.com/br/app-store/",
//                repositoryLink: "https://github.com",
//                designLink: "https://behance.net",
//                videoLink: "https://youtube.com")
        ])
}
