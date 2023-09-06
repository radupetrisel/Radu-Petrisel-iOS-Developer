//
//  Section.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 06.09.2023.
//

import SwiftUI

struct Section<Content: View>: View {
    var title: String
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.title.bold())
            
            Divider()
            
            content()
        }
    }
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        Section(title: "Section") {
            Text("Hello content!")
        }
    }
}
