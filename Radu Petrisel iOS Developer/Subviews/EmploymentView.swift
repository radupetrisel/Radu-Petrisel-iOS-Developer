import SwiftUI

struct EmploymentView: View {
    var body: some View {
        Section(title: "Employment history") {
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .top) {
                    HStack {
                        Image(systemName: "person.text.rectangle")
                        
                        Text(jobRole)
                            .bold()
                        
                        Spacer()
                        
                        Image(systemName: "building")
                        
                        Text(jobCompany)
                            .italic()
                    }
                    
                    Spacer()
                }
                
                ForEach(jobDescription, id: \.self) {
                    Text("• \($0)")
                }
            }
        }
    }
}

#Preview {
    EmploymentView()
}
