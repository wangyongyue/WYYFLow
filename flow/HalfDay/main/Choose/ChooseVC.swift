//
//  Choose.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class ChooseVC: WVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let vm = VM()
        let m = Choose(vm)
        let v = List(vm)
        self.view.addSubview(v)
        v.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(layout.top())
            make.bottom.equalTo(layout.bottom())

        }
        v.table.register(ChooseCell.classForCoder())
        v.table.register(BuyCell.classForCoder())

        v.table.didSelect { (index) in
            
            print(index)
            Router.push(ChooseDetailsVC(), ["id":10], nil)
            
        }
        m.loadData()
    }
    

    

}
