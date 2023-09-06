//
//  CV.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 23.08.2023.
//

import SwiftUI

struct CV: View {
    private let skills = [
        Skill(name: "Swift", level: 4),
        Skill(name: "SwiftUI", level: 4),
        Skill(name: "UIKit", level: 3),
        Skill(name: "C#", level: 5),
        Skill(name: "Git", level: 5),
    ]
    
    var body: some View {
        RelativeHStack {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("RADU PETRISEL")
                        .font(.title.bold())
                    Text("Software Engineer")
                }
                
                Section(title: "Details") {
                    VStack {
                        Text("Address")
                        Text("3, Aleea Azuga Cluj-Napoca, 400451 Romania")
                    }
                    
                    VStack {
                        Text("Phone")
                        Text("+40747673818")
                    }
                    
                    VStack {
                        Text("Email")
                        Text("radupetrisel@icloud.com")
                    }
                }
                
                Section(title: "Links") {
                    Text("[LinkedIn](https://www.linkedin.com/in/radu-petrisel-476668173/)")
                    
                    Text("[GitLab](https://gitlab.com/radupetrisel)")
                }
                
                Section(title: "Skills") {
                    VStack(alignment: .skillAlignmentGuide) {
                        ForEach(skills, id: \.name) { skill in
                            HStack {
                                SkillView(skill: skill.name, level: skill.level)
                            }
                        }
                        
                        Text("Languages")
                        
                        HStack {
                            SkillView(skill: "Romanian", level: 5)
                        }
                        
                        HStack {
                            SkillView(skill: "English", level: 5)
                        }
                    }
                }
                
                Section(title: "Hobbies") {
                    Text("Gaming Travelling Swimming")
                }
            }
            .padding()
            .frame(height: pdfPageHeight)
            .layoutPriority(2)
            
            VStack(spacing: 30) {
                Section(title: "Profile") {
                    Text("Passionate software engineer always looking to improve myself. I'm always trying to keep up with latest software and technologies and enjoy taking heads-on the challenges that come with them.")
                }
                
                Section(title: "EMPLOYMENT HISTORY") {
                    HStack {
                        Text(".NET Developer, Broadridge Financial Solutions")
                        
                        Spacer()
                        
                        Text("Cluj-Napoca")
                    }
                    
                    Text("""
• Implemented various client-side features on high-touch and low-touch trading systems
• Helped implement server-side features on high-touch trading systems
• Contributed to open-source projects
""")
                }
                
                Section(title: "INTERNSHIPS") {
                    HStack {
                        Text("DevOps Intern, Broadridge Financial Solutions")
                        
                        Spacer()
                        
                        Text("Cluj-Napoca")
                    }
                    
                    Text("""
• Maintained CI/CD pipelines
• Enhanced developer experience on internal platforms (Git, Jenkins)
""")
                    
                }
                
                Section(title: "EDUCATION") {
                    HStack {
                        Text("Bachelor, Technical University of Cluj-Napoca")
                        
                        Spacer()
                        
                        Text("Cluj-Napoca")
                    }
                }
                
                Section(title: "CERTIFICATIONS") {
                    Text("Cambridge English Level 3 Certificate in ESOL International (Advanced), Cambridge English Language Assessment")
                    
                    Text("Grade C")
                }
            }
            .padding()
            .frame(height: pdfPageHeight)
            .layoutPriority(6)
        }
        .pdfPage()
    }
    
    struct Skill {
        let name: String
        let level: Int
    }
}

struct CV_Previews: PreviewProvider {
    static var previews: some View {
        CV()
            .pdfPage()
    }
}
