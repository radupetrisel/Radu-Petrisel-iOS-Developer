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

                        SkillsView()

                        LanguageView()

                        HobbiesView()
                    }
                }
                .frame(width: proxy.size.width * leftToRightRatio)

                Divider()

                VStack(spacing: 15) {
                    AboutMeView()

                    EmploymentView()

                    IOSDeveloperView()

                    EducationView()

                    CertificationView()
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
