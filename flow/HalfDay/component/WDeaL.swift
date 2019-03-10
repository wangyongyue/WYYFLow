//
//  WDeaL.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WDeaL: NSObject {
    
    var vm:VM?
    override init() {
        super.init()
        
    }
    init(_ avm:VM) {
        vm = avm
    }
    func bindVM(_ avm:VM){
        
        vm = avm
    }

}
