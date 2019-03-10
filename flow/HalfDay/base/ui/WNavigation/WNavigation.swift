//
//  WNavigation.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WNavigation: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupStyle()
        setupBackItem()
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        
        
    }
    
    func setupStyle(){
        
        
        self.navigationBar.backgroundColor = UIColor.clear
        
        
    }
    func setupBackItem(){
        
        
    }
    
    
    
}
