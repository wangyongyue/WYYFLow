//
//  WNavigation.swift
//  HalfDay
//
//  Created by wangyongyue on 2019/3/9.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class WNavigation: UINavigationController ,UINavigationControllerDelegate{

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
        self.delegate = self
        
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white,NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18)]
        
        
    }
    func setupBackItem(){
        
        
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage  = UIImage()
        
        setBackButton(viewController: viewController)
    }
    
    func setBackButton(viewController: UIViewController) {
        
        let array:[AnyClass] = [ChooseVC.classForCoder(),BuyVC.classForCoder(),CheckVC.classForCoder()]
        var isBack = true
        for value in array {
            
            if viewController.classForCoder == value{
                isBack = false
                break
            }
        }
        
        if isBack {
            
            let back = WButton.init(Img.back()) {
                
                Router.pop(nil)
            }
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView:back)
        }
        
        
        
    }

    
    
    
    
    
    
    
    
    
}
