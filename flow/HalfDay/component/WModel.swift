//
//  WModel.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

protocol WModelDelegate {
    func eventClick(_ eventName:String,_ model:WModel)
}
class WModel: NSObject {

    var blidView:String?
    var delegate:WModelDelegate?
    
    func responseEvents(_ name:String){
        self.delegate?.eventClick(name, self)
        
    }
}
