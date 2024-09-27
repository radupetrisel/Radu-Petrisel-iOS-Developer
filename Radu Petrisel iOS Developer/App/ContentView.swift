import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CV_Old()
                .toolbar {
                    ShareLink("Export PDF", item: render())
                        .toolbar(.visible, for: .windowToolbar)
                }
                .preferredColorScheme(.light)
        }
        .pdfPage()
    }
    
    @MainActor
    func render() -> URL {
        let renderer = ImageRenderer(content: CV_Old())
        
        let url = URL.documentsDirectory.appending(component: "Radu Petrisel - iOS Developer.pdf")
        
        renderer.render { size, contextAction in
            var box = CGRect(x: 0, y: 0, width: pdfPageWidth, height: pdfPageHeight)
            
            guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else { return }
            
            pdf.beginPDFPage(nil)
            
            contextAction(pdf)
            
            pdf.endPDFPage()
            pdf.closePDF()
        }
        
        return url
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
