//
//  WCell.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WCell: UITableViewCell {

    var model:WModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }

    func setModel(_ aModel:WModel){ self.model = aModel}
    
       
}
