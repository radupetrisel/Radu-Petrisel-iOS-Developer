import SwiftUI

struct ProfileImage: View {
    private let socialsIconSize: Double = 14

    var body: some View {
        HStack {
            Image(.profile)
                .resizable()
                .scaledToFit()
                .offset(y: 7)
                .frame(width: 65)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 20))
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
