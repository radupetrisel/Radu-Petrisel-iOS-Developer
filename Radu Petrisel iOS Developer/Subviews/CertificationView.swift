import SwiftUI

struct CertificationView: View {
    var body: some View {
        Section(title: "Certifications") {
            VStack(alignment: .leading) {
                HStack {
                    Text(caeCertificate)
                        .bold()

                    Text(caeCertificateMark)
                        .italic()

                    Spacer()
                    
                    Text(caeCertificationDate)
                        .italic()
                }

                HStack {
                    Text(wsetCertificate)
                        .bold()

                    Text(wsetCertificateMark)
                        .italic()

                    Spacer()

                    Text(wsetCertificationDate)
                        .italic()
                }
            }
        }
    }
}

#Preview {
    CertificationView()
}
