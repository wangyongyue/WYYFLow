//
//  Choose.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Choose: WDeaL,WModelDelegate {
    
    func loadData(){
        
        var arr = Array<WModel>()
        for i in 1...6{
            
            let m = ChooseModel()
            m.name = "flow就是好用\(i)"
            m.delegate = self
            arr.append(m)
        }
        let m = BuyModel()
        m.name = "flow buy"
        arr.append(m)

        self.vm?.array = arr
        
    }
    func eventClick(_ eventName: String, _ model: WModel) {
        
        let m = model as! ChooseModel
        print(eventName + m.name!)
        m.name = "黄河远上白云间，一片孤城万仞山。羌笛何须怨杨柳，春风不度玉门关。"
        self.vm?.reload()
    }

}
