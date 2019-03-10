//
//  BuyCell.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class BuyCell: WCell {
    var label = WLabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        label.frame = self.contentView.bounds
        label.textColor = UIColor.red
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setModel(_ aModel:WModel){
        if aModel is BuyModel{
            let a = aModel as! BuyModel
            label.text = a.name
        }
    }
    
}
class BuyModel:WModel{
    
    var name:String?
    override init() {
        super.init()
        self.blidView = "BuyCell"
    }
}
