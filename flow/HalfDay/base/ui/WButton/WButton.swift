//
//  WButton.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
typealias clickBlock = () -> ()
class WButton: UIButton {

    var block:clickBlock?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addTarget()
    }
    init(_ title:String,_ callBack:@escaping clickBlock) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitle(title, for: .highlighted)
        block = callBack
    }
    init(_ img:UIImage,_ callBack:@escaping clickBlock) {
        self.init()
        self.setImage(img, for: .normal)
        self.setImage(img, for: .highlighted)
        block = callBack

    }
    
    func addTarget(){
        
        self.addTarget(self, action: #selector(clickButton), for: .touchUpInside)

    }
    
    @objc func clickButton(){
        block?()
    
    }
}
