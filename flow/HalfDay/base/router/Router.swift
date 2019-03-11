//
//  Router.swift
//  HalfDay
//
//  Created by apple on 2019/3/11.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Router: NSObject {
    
    
    class func navigationController() -> UINavigationController?{
        
        let vc = UIApplication.shared.keyWindow?.rootViewController
        
        if vc is WVC{
            return nil
        }
        if vc is UINavigationController{
            return vc as? UINavigationController
        }
        if vc is UITabBarController{
            
            let bar = vc as? UITabBarController
            
            if let index = bar?.selectedIndex{
                let currentVC = bar?.viewControllers?[index]
                if currentVC is UINavigationController{
                    return currentVC as? UINavigationController
                }
            }
            
        }
        
        return nil
    }
    
    class func currentController() -> WVC{
        
        let controller = navigationController()
        
        return controller?.viewControllers.last as! WVC
    }
    class func params() -> [String:String]?{
        
        if let dic = currentController().params{
            return dic
        }
        return nil
    }
    class func push(_ viewController: UIViewController,_ params:[String:String]?,_ block:popCallBack?){
        
        if viewController is WVC{
            let vc = viewController as! WVC
            vc.params = params
            vc.call = block
        }
        navigationController()?.pushViewController(viewController, animated: true)
    }
    
    class func pop(_ objc:AnyObject?){
        
        if objc != nil{
            
            let currentVC = currentController()
            currentVC.call?(objc)
        }
        navigationController()?.popViewController(animated: true)
    }
    
    class func popViewController(_ toClass:AnyClass,_ objc:AnyObject?){
        
        if let arr = navigationController()?.viewControllers{
            
            for (index,value) in arr.enumerated() {
                if value.classForCoder == toClass{
                    
                    if objc != nil{
                        if let num = navigationController()?.viewControllers.count {
                            if num <= index + 1{return}
                            let controllerNext = navigationController()?.viewControllers[index + 1]
                            let vc = controllerNext as! WVC
                            vc.call?(objc)
                            
                        }
                    }
                    navigationController()?.popToViewController(value, animated: true)
                    return
                }
            }
            
        }
        
        
    }
   
    

}
