//
//  WVC.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
typealias popCallBack = (_ obj:AnyObject?) -> ()

class WVC: UIViewController {

    var params:[String:String]?
    var call:popCallBack?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
        setupStyle()
    }
    
    func setupStyle() {
        
        //Base style for 矩形 2
        let style = UIView.init(frame:CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: layout.top()))
        style.alpha = 1
        self.view.addSubview(style)
        
        //Gradient 0 fill for 矩形 2
        let gradientLayer0 = CAGradientLayer()
        gradientLayer0.frame = style.bounds
        gradientLayer0.colors = [
            UIColor(red: 101.0 / 255.0, green: 144.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor,
            UIColor(red: 102.0 / 255.0, green: 178.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor]
        gradientLayer0.locations = [0, 0.5]
        gradientLayer0.startPoint = CGPoint(x: 0, y: 0.6)
        gradientLayer0.endPoint = CGPoint(x: 1, y: 0)
        style.layer.addSublayer(gradientLayer0)
    }

   

}
