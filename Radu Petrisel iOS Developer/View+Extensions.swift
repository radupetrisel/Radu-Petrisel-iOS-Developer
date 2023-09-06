//
//  View+Extensions.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 29.08.2023.
//

import SwiftUI

extension View {
    var pdfPageHeight: Double { 842 }
    var pdfPageWidth: Double { 582 }
    
    func pdfPage() -> some View {
        frame(width: pdfPageWidth, height: pdfPageHeight)
    }
}
