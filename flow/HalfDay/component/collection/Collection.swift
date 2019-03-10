//
//  Collection.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Collection: WView {

    let table = WCollection()
    var vm:VM?
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(table)
        table.snp.makeConstraints { (make) in
            make.left.top.right.bottom.equalTo(0)
        }
        vm?.callBack({[weak self] in
            if let arr = self?.vm?.array{
                self?.table.reload(arr)
            }
        })
    }
    init(_ avm:VM) {
        self.init()
        vm = avm
    }
    func bindVM(_ avm:VM){
        vm = avm
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
