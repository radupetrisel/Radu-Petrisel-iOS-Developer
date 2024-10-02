import SwiftUI

struct EmploymentView: View {
    var body: some View {
        Section(title: ".NET Developer", titleDetails: jobTimeInterval) {
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .top) {
                    HStack {
                        Image(systemName: "hammer")

                        Text(".NET WPF Winforms Git")
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
