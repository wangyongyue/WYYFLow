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
        label.snp.makeConstraints { (make) in
            make.left.equalTo(12)
            make.top.equalTo(12)
            make.bottom.equalTo(-20)
            make.width.equalTo(120)
            
        }
        label.textColor = UIColor.red
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setModel(_ aModel:WModel){
        super.setModel(aModel)

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
