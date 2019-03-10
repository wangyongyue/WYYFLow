//
//  WLabel.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = UIFont.boldSystemFont(ofSize: 14)
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.black
        self.textAlignment = .left
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    init(_text:String) {
        self.init()
        self.text = text

    }
    
    

}
