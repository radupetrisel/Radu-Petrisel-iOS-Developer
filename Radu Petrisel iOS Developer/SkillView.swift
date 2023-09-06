//
//  SkillView.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 29.08.2023.
//

import SwiftUI

struct SkillView: View {
    let skill: String
    let level: Int
    
    var body: some View {
        Group {
            Text(skill)
                .bold()
            
            HStack(spacing: 2) {
                ForEach(1..<6, id: \.self) { index in
                    Image(systemName: index <= level ? "circle.fill" : "circle")
                        .font(.system(size: 9))
                }
            }
            .alignmentGuide(.skillAlignmentGuide) { viewDimensions in
                viewDimensions[.leading]
            }
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SkillView(skill: "Swift", level: 3)
        }
    }
}
