import SwiftUI

struct Section<Content: View>: View {
    let title: String
    var alignment: HorizontalAlignment = .leading
    var spacing: CGFloat = 5

    @ViewBuilder var content: () -> Content
    
    var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            Text(title)
                .font(.title.bold())
            
            Divider()
            
            content()
        }
    }
}

#Preview {
    Section(title: "Section") {
        Text("Hello content!")
    }
}
