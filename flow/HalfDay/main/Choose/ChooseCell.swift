//
//  ChooseCell.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
import SnapKit
class ChooseCell: WCell {

   
    var label = WLabel()
    var button = WButton.init("点击")
    var event:CGFunction?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        label.frame = self.contentView.bounds
        
        self.contentView.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.right.equalTo(-12)
            make.top.equalTo(12)
        }
        button.clickEvent {[weak self] in
                        
            self?.model?.responseEvents("choose")
        }
        
    }
    
   
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setModel(_ aModel:WModel){
        super.setModel(aModel)
        if aModel is ChooseModel{
            let a = aModel as! ChooseModel
            label.text = a.name
        }
    }

}
class ChooseModel:WModel{
    
    var name:String?
    override init() {
        super.init()
        self.blidView = "ChooseCell"
    }
}
