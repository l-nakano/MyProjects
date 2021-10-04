import SwiftUI

struct ProjectDetails {
    var title,
        storeLink,
        repositoryLink,
        designLink,
        videoLink,
        description,
        design,
        process: String
    var technologies: [String]
    var images: [Image]
    var date: Date
    
    init(title: String, description: String, technologies: [String], design: String, process: String, images: [Image], date: String,
         storeLink: String = "", repositoryLink: String = "", designLink: String = "", videoLink: String = "") {
        self.title = title
        self.description = description
        self.technologies = technologies
        self.design = design
        self.process = process
        self.images = images
        self.storeLink = storeLink
        self.repositoryLink = repositoryLink
        self.designLink = designLink
        self.videoLink = videoLink
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/mm/yyyy"
        self.date = formatter.date(from: date)!
    }
}

struct Portfolio {
    var title,
        description: String
    var projects: [ProjectDetails]
    
    init(title: String, description: String, projects: [ProjectDetails]) {
        self.title = title
        self.description = description
        self.projects = projects
    }
}
