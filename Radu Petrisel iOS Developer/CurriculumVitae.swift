//
//  CurriculumVitae.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 27.09.2024.
//

import SwiftUI

struct CurriculumVitae: View {
    private let headerRatio = 0.15

    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline, spacing: 10) {
                VStack(alignment: .leading) {
                    ProfileImage()

                    ContactDetails()
                }

                VStack(alignment: .leading, spacing: 10) {
                    AboutMeView()

                    SkillsView()
                }
            }

            Divider()

            VStack(spacing: 10) {
                EmploymentView()

                IOSDeveloperView()

                EducationView()

                CertificationView()
            }

            Spacer()
        }
        .overlay(alignment: .bottomTrailing, content: SwiftUIWatermark.init)
        .padding(.horizontal)
        .pdfPage()
        .preferredColorScheme(.light)
    }
}

#Preview {
    CurriculumVitae()
}
