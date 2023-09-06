//
//  RelativeHStack.swift
//  Radu Petrisel iOS Developer
//
//  Created by Radu Petrisel on 23.08.2023.
//

import SwiftUI

struct RelativeHStack: Layout {
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let width = proposal.replacingUnspecifiedDimensions().width
        let viewFrames = frames(for: subviews, in: width)
        let height = viewFrames.max { $0.maxY < $1.maxY } ?? .zero
        
        return CGSize(width: width, height: height.maxY)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let viewFrames = frames(for: subviews, in: bounds.width)
        
        for index in viewFrames.indices {
            let frame = viewFrames[index]
            let position = CGPoint(x: bounds.minX + frame.minX, y: bounds.midY)
            subviews[index].place(at: position, anchor: .leading, proposal: ProposedViewSize(frame.size))
        }
    }
    
    private func frames(for subviews: Subviews, in totalWidth: Double) -> [CGRect] {
        let totalPriorities = subviews.reduce(0) { $0 + $1.priority }
        
        var viewFrames = [CGRect]()
        var x = 0.0
        
        for subview in subviews {
            let subviewWidth = subview.priority / totalPriorities * totalWidth
            let propsal = ProposedViewSize(width: subviewWidth, height: nil)
            
            let size = subview.sizeThatFits(propsal)
            
            let frame = CGRect(x: x, y: 0, width: size.width, height: size.height)
            viewFrames.append(frame)
            
            x += size.width
        }
        
        return viewFrames
    }
}
