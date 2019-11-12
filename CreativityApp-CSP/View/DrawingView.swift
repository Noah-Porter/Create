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
    
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing Code
        createStickFigure().stroke()
        createStickFigure(at: CGPoint(x: 12, y: 56), ofSize: CGFloat(50))
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawWidthImage() -> Void
    {
        let bobRoss : UIBezierPath = UIBezierPath()
        
        UIColor(patternImage: UIImage(named: "bobpool")!).setFill()
        UIColor.green.setStroke()
        bobRoss.lineWidth = 1.4
        
        bobRoss.move(to: CGPoint(x: 150, y: 40))
        bobRoss.addLine(to: CGPoint(x: 75, y: 200))
        bobRoss.addLine(to: CGPoint(x: 50, y: 200))
        bobRoss.addLine(to: CGPoint(x: 0, y: 50))
        bobRoss.close()
        bobRoss.stroke()
        bobRoss.fill()
        
        
        bobRoss.move(to: CGPoint(x: 250, y: 250))
        bobRoss.addLine(to: CGPoint(x: 290, y: 270))
        bobRoss.addLine(to: CGPoint(x: 260, y: 280))
        bobRoss.addLine(to: CGPoint(x: 290, y: 240))
        bobRoss.addLine(to: CGPoint(x: 250, y: 250))
        bobRoss.close()
        bobRoss.stroke()
        bobRoss.fill()
    }
    
    private func lotsOfFigures() -> Void
    {
        for _ in 1...100
        {
            let randomX = CGFloat(arc4random() % 300)
            let randomY = CGFloat(arc4random() % 300)
            let randomSize = CGFloat(arc4random() % 100)
            
            createStickFigure(at: CGPoint(x: randomX, y: randomY), ofSize: randomSize)
            
        }
    }
    
    private func drawEyeImage() -> Void
    {

    }
    
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
        
        // understand more: the relation between special figure and figure
        
        
        specialFigure.move(to: CGPoint (x: center.x, y: center.y + ofSize))
        specialFigure.addLine(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.move(to: CGPoint(x: center.x - ofSize, y: center.y + (ofSize * 2)))
        specialFigure.addLine(to: CGPoint(x: center.x + ofSize, y: center.y + (ofSize * 2)))
        specialFigure.move(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.addLine(to: CGPoint(x: center.x - ofSize, y: center.y + (ofSize * 5)))
        specialFigure.move(to: CGPoint(x: center.x, y: center.y + (ofSize * 3.5)))
        specialFigure.addLine(to: CGPoint(x: center.x + ofSize, y: center.y + (ofSize * 5)))
        
        makeRandomColor().setStroke()
        specialFigure.lineWidth = 3
        specialFigure.stroke()
        
        
    }
    
    private func makeRandomColor() -> UIColor
    {
        let red : CGFloat = CGFloat( Double(arc4random() % 256) / 255.0)
        let green : CGFloat = CGFloat( Double(arc4random() % 256) / 255.0)
        let blue : CGFloat = CGFloat( Double(arc4random() % 256) / 255.0)
        let color = UIColor(red: red, green: green, blue: blue, alpha: CGFloat(1.0))
        return color
    }
    
    
}
