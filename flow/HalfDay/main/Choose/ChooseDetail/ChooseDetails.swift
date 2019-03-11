//
//  ChooseDetails.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class ChooseDetails: WDeaL {

    func loadData(){
        
        var arr = Array<WModel>()
        for i in 1...6{
            
            let m = ChooseDetaisModel()
            m.name = "flow就是好用\(i)"
            arr.append(m)
        }
        
        self.vm?.array = arr
        
        
    }
    
}
