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

                VStack(spacing: 15) {
                    Section(title: "About me") {
                        Text(profile)
                    }

                    Section(title: "Employment history") {
                        VStack(alignment: .leading, spacing: 7) {
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

                            ForEach(jobDescription, id: \.self) {
                                Text("• \($0)")
                            }
                        }
                    }

                    Section(title: "iOS Experience") {
                        VStack(alignment: .leading, spacing: 7) {
                            HStack(alignment: .top) {
                                HStack {
                                    Image(systemName: "person.text.rectangle")

                                    Text(iosRole)
                                        .bold()

                                    Spacer()

                                    Image(systemName: "building")

                                    Text(iosCompany)
                                        .italic()
                                }

                                Spacer()
                            }

                            ForEach(iosDescription, id: \.self) {
                                Text("• \($0)")
                            }
                        }
                    }

                    Section(title: "Education") {
                        VStack(alignment: .leading, spacing: 7) {
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

                            ForEach(educationDescription, id: \.self) {
                                Text("• \($0)")
                            }
                        }
                    }

                    Section(title: "Certifications") {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(certificate)

                                Spacer()


                                Text(certificationDate)
                                    .italic()
                            }

                            Text(certificateMark)
                        }
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


