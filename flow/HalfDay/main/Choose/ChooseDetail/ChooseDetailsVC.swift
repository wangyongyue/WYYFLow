//
//  ChooseDetailsVC.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class ChooseDetailsVC: WVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "详情"
        let vm = VM()
        let m = ChooseDetails(vm)
        let v = List(vm)
        self.view.addSubview(v)
        v.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(layout.top())
            make.bottom.equalTo(0)
            
        }
        v.table.register(ChooseDetailsCell.classForCoder())
        v.table.didSelect { (index) in
            
            print(Router.params())
            
        }
        m.loadData()
    }
    
}
