import SwiftUI

struct CurriculumVitae: View {
    private let headerRatio = 0.15

    var body: some View {
        VStack(spacing: 15) {
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

            VStack(spacing: 12) {
                EmploymentView()

                IOSDeveloperView()

                EducationView()

                CertificationView()
            }

            Spacer()
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
