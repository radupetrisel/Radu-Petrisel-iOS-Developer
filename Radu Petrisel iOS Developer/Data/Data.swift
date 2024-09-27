import Foundation

let name = "RADU PETRIȘEL"
let jobTitle = "Software Engineer"
let address = """
3, Aleea Azuga
Cluj-Napoca, 400451
Romania
"""
let phone = "+40747673818"
let email = "radupetrisel@icloud.com"

let linkedIn = "https://www.linkedin.com/in/radu-petrisel"
let github = "https://github.com/radupetrisel"

let skills = [
    Skill(name: "Swift", level: 4),
    Skill(name: "SwiftUI", level: 4),
    Skill(name: "UIKit", level: 3),
    Skill(name: "C#", level: 5),
    Skill(name: "Git", level: 5),
]

let hobbies = ["Gaming", "Travelling", "Swimming"]

let profile = "Passionate software engineer always looking to improve myself. I'm always trying to keep up with latest software and technologies and enjoy taking heads-on the challenges that come with them."


let job = ".NET Developer, Broadridge Financial Solutions"
let location = "Cluj-Napoca"
let jobDescription = """
• Implemented various client-side features on high-touch and low-touch trading systems
• Helped implement server-side features on high-touch trading systems
• Contributed to open-source projects
"""

let internship = "DevOps Intern, Broadridge Financial Solutions"
let internshipDescription = """
• Maintained CI/CD pipelines
• Enhanced developer experience on internal platforms (Git, Jenkins)
"""

let education = "Bachelor, Technical University of Cluj-Napoca"

let certificate = "Cambridge English Level 3 Certificate in ESOL International (Advanced), Cambridge English Language Assessment"
let certificateMark = "Grade C"

struct Skill {
    let name: String
    let level: Int
}
