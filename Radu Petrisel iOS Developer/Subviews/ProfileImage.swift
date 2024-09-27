import SwiftUI

struct ProfileImage: View {
    var body: some View {
        HStack {
            Image("photo")
                .resizable()
                .scaledToFit()
                .offset(y: 7)
                .frame(width: 65)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 20).bold())

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
