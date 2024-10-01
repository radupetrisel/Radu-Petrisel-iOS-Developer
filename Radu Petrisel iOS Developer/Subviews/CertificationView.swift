import SwiftUI

struct CertificationView: View {
    var body: some View {
        Section(title: "Certifications") {
            VStack(alignment: .leading) {
                HStack {
                    Text(certificate)
                    
                    Spacer()
                    
                    
                    Text(certificationDate)
                        .italic()
                }
                
                Text(certificateMark)
            }
        }
    }
}

#Preview {
    CertificationView()
}
