import SwiftUI

struct ProfileImage: View {
    private let socialsIconSize: Double = 14

    var body: some View {
        HStack {
            Image(.profile)
                .resizable()
                .scaledToFit()
                .offset(y: 7)
                .clipShape(.circle)
                .frame(height: 80)

            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .offset(x: -1)

                Text(jobTitle)
                    .foregroundStyle(.secondary)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    ProfileImage()
}
