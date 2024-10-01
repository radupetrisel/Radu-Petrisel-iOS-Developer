import SwiftUI

struct LanguageView: View {
    var body: some View {
        Section(title: "Languages") {
            HStack {
                SkillView(skill: "Romanian", level: 5)
            }
            
            HStack {
                SkillView(skill: "English", level: 5)
            }
        }
    }
}

#Preview {
    LanguageView()
}
