//
//  VM.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
typealias DataCallBack = () -> ()
class VM: NSObject {

    private var _array = Array<WModel>()
    var array:Array<WModel>{
        
        set{
            _array = newValue
            block?()
        }
        get{
            return _array
        }
    }
    private var block:DataCallBack?
    func callBack(_ ablock:@escaping DataCallBack){
        block = ablock
    }
    func reload(){
        block?()
    }
}
