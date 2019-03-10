//
//  WTabBar.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/10.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupStyle()
        addControllers()
    }
    

    func setupStyle(){
        
    }
    func addControllers(){
        
        let choose = getControoler(ChooseVC())
        let buy = getControoler(BuyVC())
        let check = getControoler(CheckVC())
        
        self.addChild(choose)
        self.addChild(buy)
        self.addChild(check)
        
        self.selectedIndex = 0

    }
    func getControoler(_ root:WVC) -> UINavigationController{
        
        let vc = WNavigation.init(rootViewController: root)
        if root is ChooseVC{
            vc.tabBarItem.title = "one"
            vc.tabBarItem.image = nil
            vc.tabBarItem.selectedImage = nil
        }else if root is BuyVC{
            vc.tabBarItem.title = "two"
            vc.tabBarItem.image = nil
            vc.tabBarItem.selectedImage = nil
        }else{
            vc.tabBarItem.title = "three"
            vc.tabBarItem.image = nil
            vc.tabBarItem.selectedImage = nil
        }
        
        return vc
      
    }
    

}
