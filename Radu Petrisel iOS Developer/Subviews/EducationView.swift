import SwiftUI

struct EducationView: View {
    var body: some View {
        Section(title: "Education") {
            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Image(systemName: "graduationcap")
                            
                            Text(educationLevel)
                                .bold()
                            
                            Spacer()
                            
                            Image(systemName: "building")
                            
                            Text(educationInstitution)
                                .italic()
                        }
                    }
                }
                
                ForEach(educationDescription, id: \.self) {
                    Text("• \($0)")
                }
            }
        }
    }
}

#Preview {
    EducationView()
}
