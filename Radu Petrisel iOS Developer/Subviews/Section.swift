import SwiftUI

struct Section<Content: View>: View {
    let title: String
    let titleDetails: String?
    let alignment: HorizontalAlignment
    let spacing: Double

    @ViewBuilder var content: () -> Content

    init(
        title: String,
        titleDetails: String? = nil,
        alignment: HorizontalAlignment = .leading,
        spacing: Double = 5,
        content: @escaping () -> Content
    ) {
        self.title = title
        self.titleDetails = titleDetails
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
    }

    var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            HStack(alignment: .bottom) {
                Text(title)
                    .font(.title.bold())

                Spacer()
                
                if let titleDetails {
                    Text(titleDetails)
                        .italic()
                }
            }

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
