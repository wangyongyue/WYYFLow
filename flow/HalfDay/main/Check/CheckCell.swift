//
//  CheckCell.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class CheckCell: WCell {
    var label = WLabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        label.frame = self.contentView.bounds
        label.textColor = UIColor.green

        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setModel(_ aModel:WModel){
        super.setModel(aModel)

        if aModel is CheckModel{
            let a = aModel as! CheckModel
            label.text = a.name
        }
    }
    
}
class CheckModel:WModel{
    
    var name:String?
    override init() {
        super.init()
        self.blidView = "CheckCell"
    }
}
