//
//  List.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit
import SnapKit
class List: WView {

    let table = WTable()
    var vm:VM?
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(table)
        table.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(0)

        }
        
        
    }
    
    init(_ avm:VM) {
        self.init()
        vm = avm
        vm?.callBack({[weak self]  in
            if let arr = self?.vm?.array{
                self?.table.reload(arr)
            }
        })
        
    }
    func bindVM(_ avm:VM){
        
        vm = avm
        vm?.callBack({[weak self]  in
            if let arr = self?.vm?.array{
                self?.table.reload(arr)
            }
        })
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
