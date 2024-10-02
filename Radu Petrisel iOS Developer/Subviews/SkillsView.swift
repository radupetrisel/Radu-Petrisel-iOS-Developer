import SwiftUI

struct SkillsView: View {
    var body: some View {
        HStack {
            Text("Skillset")
                .bold()

            HStack(spacing: 10) {
                ForEach(skills, id: \.self, content: Text.init)
                    .italic()
            }
        }
    }
}

#Preview {
    SkillsView()
}
