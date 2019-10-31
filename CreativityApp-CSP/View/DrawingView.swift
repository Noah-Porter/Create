//
//  DrawingView.swift
//  CreativityApp-CSP
//
//  Created by Noah Porter on 10/29/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit

class DrawingView : UIView
{
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    //X&Y or CGPoint and a Size.

    private func createStickFigure(at center : CGPoint, ofSize : CGFloat) -> Void
    {
        let specialFigure : UIBezierPath = UIBezierPath()
        specialFigure.addArc(withCenter: center,
                             radius: ofSize,
                             startAngle: CGFloat(0),
                             endAngle: CGFloat(2) * CGFloat.pi,
                             clockwise: true)
        
        specialFigure.move(to: CGPoint (x: center.x, y: center.y + ofSize))
        specialFigure.addLine(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.move(to: CGPoint(x: center.x - ofSize, y: center.y + (ofSize * 2)))
        specialFigure.addLine(to: CGPoint(x: center.x + ofSize, y: center.y + (ofSize * 2)))
        specialFigure.move(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.addLine(to: CGPoint(x: center.x - ofSize, y: center.y + (ofSize * 5)))
        specialFigure.move(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.addLine(to: CGPoint(x: center.x + ofSize, y: center.y + (ofSize * 5)))
    
        specialFigure.stroke()
    }
    
}
