import SwiftUI

struct IOSDeveloperView: View {
    var body: some View {
        Section(title: "iOS Experience") {
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .top) {
                    HStack {
                        Image(systemName: "person.text.rectangle")
                        
                        Text(iosRole)
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
