//
//  Choose.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Choose: WDeaL {
    
    func loadData(){
        
        var arr = Array<WModel>()
        for i in 1...6{
            
            let m = ChooseModel()
            m.name = "文身断发记录数"
            arr.append(m)
        }
        
        self.vm?.array = arr
        
        
    }

}
