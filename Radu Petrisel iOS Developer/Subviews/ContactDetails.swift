import SwiftUI

struct ContactDetails: View {
    var body: some View {
        Section(title: "Contact details") {
            VStack(alignment: .leading, spacing: 5) {
                Label(address, systemImage: "location")

                Label(phone, systemImage: "phone")

                Label(email, systemImage: "envelope")
            }
            .symbolVariant(.none)
        }
    }
}

#Preview {
    ContactDetails()
}