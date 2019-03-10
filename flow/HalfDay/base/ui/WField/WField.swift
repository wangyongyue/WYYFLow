//
//  WField.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WField: UITextField ,UITextFieldDelegate{

    var block:textChange?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.delegate = self
        self.borderStyle = .roundedRect
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.black
        self.addTarget(self, action: #selector(changeText), for: .editingChanged)
    }
    @objc func changeText(){
        
        if let str  = self.text{
            
            self.block?(str)

        }
    }
    
    
    init(_ placeholder:String,_ callBack:@escaping textChange) {
        
        self.init()
        self.placeholder = placeholder
        block = callBack
    }

}
