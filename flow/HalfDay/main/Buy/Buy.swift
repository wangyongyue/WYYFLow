//
//  Buy.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Buy: WDeaL {

    func loadData(){
        
        var arr = Array<WModel>()
        for i in 1...2{
            
            let m = BuyModel()
            m.name = "flow就是好用"
            arr.append(m)
        }
        
        self.vm?.array = arr
        
        
    }
}
