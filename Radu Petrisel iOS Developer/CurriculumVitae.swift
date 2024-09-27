//
//  CurriculumVitae.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 27.09.2024.
//

import SwiftUI

struct CurriculumVitae: View {
    private let leftToRightRatio = 0.35
    private var rightToLeftRatio: Double { 1 - leftToRightRatio }

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                ProfileImage()

                ContactDetails()
            }
            .frame(width: pdfPageWidth * leftToRightRatio)

            Divider()

            Text("Right side")
                .frame(width: pdfPageWidth * rightToLeftRatio)
        }
        .pdfPage()
        .padding()
        .preferredColorScheme(.light)
        .overlay(alignment: .bottomTrailing, content: SwiftUIWatermark.init)
    }
}

#Preview {
    CurriculumVitae()
}


