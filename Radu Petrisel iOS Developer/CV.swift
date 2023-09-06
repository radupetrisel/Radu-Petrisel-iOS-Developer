//
//  CV.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 23.08.2023.
//

import SwiftUI

struct CV: View {
    var body: some View {
        RelativeHStack {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title.bold())
                    Text("Software Engineer")
                }
                
                Section(title: "Details") {
                    VStack {
                        Text("Address")
                        Text(address)
                    }
                    
                    VStack {
                        Text("Phone")
                        Text(phone)
                    }
                    
                    VStack {
                        Text("Email")
                        Text(email)
                    }
                }
                
                Section(title: "Links") {
                    Text(linkedIn)
                    Text(github)
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
                    Text(hobbies.formatted(.list(type: .and)))
                }
            }
            .frame(height: pdfPageHeight)
            .layoutPriority(27)
            
            VStack(spacing: 30) {
                Section(title: "Profile") {
                    Text(profile)
                }
                
                Section(title: "EMPLOYMENT HISTORY") {
                    HStack {
                        Text(job)
                        
                        Spacer()
                        
                        Text(location)
                    }
                    
                    Text(jobDescription)
                }
                
                Section(title: "INTERNSHIPS") {
                    HStack {
                        Text(internship)
                        
                        Spacer()
                        
                        Text(location)
                    }
                    
                    Text(internshipDescription)
                }
                
                Section(title: "EDUCATION") {
                    HStack {
                        Text(education)
                        
                        Spacer()
                        
                        Text(location)
                    }
                }
                
                Section(title: "CERTIFICATIONS") {
                    Text(certificate)
                    
                    Text(certificateMark)
                }
            }
            .padding(.leading, 5)
            .frame(height: pdfPageHeight)
            .layoutPriority(73)
        }
        .padding()
        .pdfPage()
    }
}

struct CV_Previews: PreviewProvider {
    static var previews: some View {
        CV()
            .pdfPage()
    }
}
