//
//  SkillAlignmentGuide.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 29.08.2023.
//

import SwiftUI

extension HorizontalAlignment {
    enum SkillAlignmentGuide: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.leading]
        }
    }
    
    static let skillAlignmentGuide = HorizontalAlignment(SkillAlignmentGuide.self)
}
