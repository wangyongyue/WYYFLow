//
//  Buy.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class BuyVC: WVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let vm = VM()
        let m = Buy(vm)
        let v = List(vm)
        self.view.addSubview(v)
        v.frame = self.view.bounds
        v.table.register(BuyCell.classForCoder())
        v.table.didSelect { (index) in
            
            print(index)
        }
        m.loadData()
    }

}
