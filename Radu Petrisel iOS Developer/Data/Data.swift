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

let profile = "Driven software engineer with a passion for growth and innovation, constantly striving to expand my expertise by staying on the cutting edge of technology. Eager to tackle complex challenges head-on, I thrive in dynamic environments that foster creativity, learning, and pushing boundaries to deliver impactful solutions."


let jobRole = ".NET Developer"
let jobCompany = "Broadridge Financial Solutions"
let jobLocation = "Cluj-Napoca"
let jobDescription = [
"Developed and implemented innovative client-side features for both high-touch and low-touch trading systems,significantly enhancing user interaction and efficiency.",
"Collaborated on implementing server-side features for high-touch trading platforms, improving system reliability and performance",
"Contributed to open-source projects, showcasing a commitment to community-driven development and software innovation"
]

let educationLevel = "Bachelor"
let educationInstitution = "Technical University of Cluj-Napoca"
let educationDescription = [
"Completed coursework in Advanced Data Structures and Algorithms, Database Management Systems, Software Engineering, Operating Systems, and Computer Networks, gaining a comprehensive foundation in core computer science concepts and practical application.",
#"My thesis project, titled "FluentMotion", involved the development of a .NET and ReactiveX-based library for processing hand tracking data in Virtual Reality (VR), enabling more simpler and more powerful user experiences within VR environments."#
]

let certificate = "Cambridge English: Advanced (CAE) Certification"
let certificateMark = "Grade C"

struct Skill {
    let name: String
    let level: Int
}
