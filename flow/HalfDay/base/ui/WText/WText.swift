//
//  WText.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
typealias textChange = (_ text:String) -> ()
class WText: UITextView ,UITextViewDelegate{

    var block:textChange?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.black
        self.textAlignment = .left
        self.delegate = self
        
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.3
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
    }
    func textViewDidChange(_ textView: UITextView) {
        
        self.block?(textView.text)
    }
    init(_ callBack:@escaping textChange) {
    
        self.init()
        
        block = callBack
    }
    

}
