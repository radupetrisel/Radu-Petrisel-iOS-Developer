import SwiftUI

struct HobbiesView: View {
    var body: some View {
        Text(hobbies.formatted(.list(type: .and)))
            .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    HobbiesView()
}
