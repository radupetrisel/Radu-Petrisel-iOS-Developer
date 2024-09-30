//
//  CurriculumVitae.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 27.09.2024.
//

import SwiftUI

struct CurriculumVitae: View {
    private let leftToRightRatio = 0.33
    private var rightToLeftRatio: Double { 1 - leftToRightRatio }

    var body: some View {
        GeometryReader { proxy in
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 0) {
                    ProfileImage()

                    VStack(alignment: .leading, spacing: 20) {
                        ContactDetails()

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

                        Section(title: "Hobbies") {
                            Text(hobbies.formatted(.list(type: .and)))
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }
                }
                .frame(width: proxy.size.width * leftToRightRatio)

                Divider()

                VStack(spacing: 20) {
                    Section(title: "Profile") {
                        Text(profile)
                    }

                    Section(title: "Employment history") {
                        VStack(spacing: 7) {
                            HStack(alignment: .top) {
                                HStack {
                                    Image(systemName: "person.text.rectangle")

                                    Text(jobRole)
                                        .bold()

                                    Spacer()

                                    Image(systemName: "building")

                                    Text(jobCompany)
                                        .italic()
                                }

                                Spacer()
                            }

                            Text(jobDescription)
                        }
                    }

                    Section(title: "Education") {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Image(systemName: "graduationcap")

                                    Text(educationLevel)
                                        .bold()

                                    Spacer()

                                    Image(systemName: "building")

                                    Text(educationInstitution)
                                        .italic()
                                }
                            }
                        }
                    }

                    Section(title: "Certifications") {
                        Text(certificate)

                        Text(certificateMark)
                    }
                }
            }
        }
        .overlay(alignment: .bottomTrailing, content: SwiftUIWatermark.init)
        .padding()
        .pdfPage()
        .preferredColorScheme(.light)
    }
}

#Preview {
    CurriculumVitae()
}


