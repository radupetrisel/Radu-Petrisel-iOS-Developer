import SwiftUI

struct SwiftUIWatermark: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 3) {
            Text("Powered by SwiftUI")
            Image(systemName: "swift")
                .foregroundStyle(.orange.gradient)
                .offset(y: -1)
        }
        .font(.system(size: 8))
    }
}

#Preview {
    SwiftUIWatermark()
}
