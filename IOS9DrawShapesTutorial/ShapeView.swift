//
//  ShapeView.swift
//  IOS9DrawShapesTutorial
//
//  Created by Xinxibin on 2017/5/3.
//  Copyright © 2017年 Xinxibin. All rights reserved.
//

import UIKit

class ShapeView: UIView {
    
    var currentShapeType: Int = 0
    
    init(frame: CGRect, shape: Int) {
        super.init(frame: frame)
        self.currentShapeType = shape
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        switch currentShapeType {
        case 0: drawRectangle()
        case 1: drawLines()
        case 2: drawCircle()
        default: print("default")
        }        
    }
    
    func drawLines() {
        //1
        let ctx = UIGraphicsGetCurrentContext()!
        
        //2
        ctx.beginPath()
        ctx.move(to: CGPoint(x: 20.0, y: 20.0))
        ctx.addLine(to: CGPoint(x: 250.0, y: 100.0))
        ctx.addLine(to: CGPoint(x: 100.0, y: 200.0))
        ctx.setLineWidth(5.0)
        
        //3
        ctx.closePath()
        ctx.strokePath()
    }
    
    func drawRectangle() {
        let center = CGPoint(x: self.frame.size.width / 2.0, y: self.frame.size.height / 2.0)
        let rectangleWidth:CGFloat = 100.0
        let rectangleHeight:CGFloat = 100.0
        let ctx = UIGraphicsGetCurrentContext()!
        
        //4
        ctx.addRect(CGRect(x: center.x - (0.5 * rectangleWidth), y: center.y - (0.5 * rectangleHeight), width: rectangleWidth, height: rectangleHeight))
        ctx.setLineWidth(10)
        ctx.setStrokeColor(UIColor.gray.cgColor)
        ctx.strokePath()
        
        //5
        ctx.setFillColor(UIColor.green.cgColor)
        ctx.addRect(CGRect(x: center.x - (0.5 * rectangleWidth), y: center.y - (0.5 * rectangleHeight), width: rectangleWidth, height: rectangleHeight))
        ctx.fillPath()
    }
    
    func drawCircle() {
        let center = CGPoint(x: self.frame.size.width / 2.0, y: self.frame.size.height / 2.0)
        let ctx = UIGraphicsGetCurrentContext()!
        ctx.beginPath()
        
        //6
        ctx.setLineWidth(5)
        
        let x:CGFloat = center.x
        let y:CGFloat = center.y
        let radius: CGFloat = 100.0
        let endAngle: CGFloat = CGFloat(2 * M_PI)
        
        ctx.addArc(center: CGPoint(x: x, y: y), radius: radius, startAngle: 0, endAngle: endAngle, clockwise: false)
        ctx.strokePath()
    }
}
