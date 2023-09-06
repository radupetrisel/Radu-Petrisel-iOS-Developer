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
                    if index <= level {
                        Image(systemName: "circle.fill")
                            .font(.caption)
                    } else {
                        Image(systemName: "circle")
                            .font(.caption)
                    }
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
