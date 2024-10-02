import SwiftUI

struct ContactDetails: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Label(linkedIn, image: .linkedin)

            Label(phone, systemImage: "phone")

            Label(email, systemImage: "envelope")
        }
        .font(.caption)
        .symbolVariant(.none)
    }
}

#Preview {
    ContactDetails()
}
