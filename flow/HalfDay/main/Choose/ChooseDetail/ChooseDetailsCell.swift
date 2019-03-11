//
//  ChooseDetailsCell.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class ChooseDetailsCell: WCell {

    var label = WLabel()
    var event:CGFunction?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        label.frame = self.contentView.bounds
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setModel(_ aModel:WModel){
        super.setModel(aModel)
        if aModel is ChooseDetaisModel{
            let a = aModel as! ChooseDetaisModel
            label.text = a.name
        }
    }
    
}
class ChooseDetaisModel:WModel{
    
    var name:String?
    override init() {
        super.init()
        self.blidView = "ChooseDetailsCell"
    }
}
