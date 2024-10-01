import SwiftUI

struct SkillsView: View {
    var body: some View {
        Section(title: "Skills") {
            ForEach(skills, id: \.name) { skill in
                HStack {
                    SkillView(skill: skill.name, level: skill.level)
                }
            }
        }
    }
}

#Preview {
    SkillsView()
}
