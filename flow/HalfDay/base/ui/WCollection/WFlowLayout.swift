//
//  WFlowLayout.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WFlowLayout: UICollectionViewFlowLayout {

    override init() {
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(_ itemSize:CGSize,_ scrollDirection:UICollectionView.ScrollDirection) {
        super.init()
        self.itemSize = itemSize
        self.scrollDirection = scrollDirection
    }
    
    
}
