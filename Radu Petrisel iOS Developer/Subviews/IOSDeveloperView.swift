import SwiftUI

struct IOSDeveloperView: View {
    var body: some View {
        Section(title: "iOS Developer", titleDetails: iosTimeInterval) {
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .top) {
                    HStack {
                        Image(systemName: "hammer")
                        
                        Text("Swift SwiftUI SwiftData Git")
                            .bold()

                        Spacer()
                        
                        Image(systemName: "building")
                        
                        Text(iosCompany)
                            .italic()
                    }
                    
                    Spacer()
                }
                
                ForEach(iosDescription, id: \.self) {
                    Text("• \($0)")
                }
            }
        }
    }
}

#Preview {
    IOSDeveloperView()
}
