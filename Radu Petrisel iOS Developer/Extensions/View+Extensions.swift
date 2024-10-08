import SwiftUI

extension View {
    var pdfPageHeight: Double { 842 }
    var pdfPageWidth: Double { 582 }
    
    func pdfPage() -> some View {
        frame(width: pdfPageWidth, height: pdfPageHeight)
    }
}
