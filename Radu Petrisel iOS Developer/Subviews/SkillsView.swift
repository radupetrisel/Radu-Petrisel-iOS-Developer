import SwiftUI

struct SkillsView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Skillset")

            HStack(spacing: 10) {
                ForEach(skills, id: \.self, content: Text.init)
                    .font(.title3)
                    .bold()
            }
        }
    }
}

#Preview {
    SkillsView()
}
