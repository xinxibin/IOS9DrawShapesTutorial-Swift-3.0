//
//  ViewController.swift
//  IOS9DrawShapesTutorial
//
//  Created by Xinxibin on 2017/5/3.
//  Copyright © 2017年 Xinxibin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let myView = ShapeView(frame: CGRect(x: 50, y: 200, width: 280, height: 250), shape: sender.tag)
        myView.backgroundColor = UIColor.cyan
        view.addSubview(myView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

