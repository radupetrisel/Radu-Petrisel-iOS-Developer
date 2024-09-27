import SwiftUI

struct CV_Old: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ProfileImage()
                
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
                
                VStack() {
                    Section(title: "Skills") {
                        ForEach(skills, id: \.name) { skill in
                            HStack {
                                SkillView(skill: skill.name, level: skill.level)
                            }
                        }
                    }
                    
                    Section(title: "Languages") {
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
            .layoutPriority(30)
            
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
            .padding(.leading, 7)
            .frame(height: pdfPageHeight)
            .layoutPriority(70)
        }
        .overlay(alignment: .bottomTrailing) {
            SwiftUIWatermark()
        }
        .padding()
        .pdfPage()
        .preferredColorScheme(.light)
    }
}

#Preview {
    CV_Old()
        .pdfPage()
}
