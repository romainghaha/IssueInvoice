//
//  IIRootTabBarViewController.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

class IIRootTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tabBar = UITabBarItem.appearance()
        let attrs_Normal = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.gray]
        let attrs_Select = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.darkGray]
        tabBar.setTitleTextAttributes(attrs_Normal, for: .normal)
        tabBar.setTitleTextAttributes(attrs_Select, for: .selected)
        
        let home = IIHomeViewController()
        home.tabBarItem.title = "首页"
        home.tabBarItem.image = UIImage(named: "tabBar_essence_icon")
        home.tabBarItem.selectedImage = UIImage(named: "tabBar_essence_click_icon")
        
        let order = IIOrderViewController()
        order.tabBarItem.title = "订单"
        order.tabBarItem.image = UIImage(named: "tabBar_new_icon")
        order.tabBarItem.selectedImage = UIImage(named: "tabBar_new_click_icon")
        
        let attention = IIAttentionViewController()
        attention.tabBarItem.title = "关注"
        attention.tabBarItem.image = UIImage(named: "tabBar_friendTrends_icon")
        attention.tabBarItem.selectedImage = UIImage(named: "tabBar_friendTrends_click_icon")
        
        let mine = IIMineViewController()
        mine.tabBarItem.title = "我"
        mine.tabBarItem.image = UIImage(named: "tabBar_me_icon")
        mine.tabBarItem.selectedImage = UIImage(named: "tabBar_me_click_icon")
        
        let controllers = [home,order,attention,mine];
        for vc in controllers {
            
            let red = CGFloat(arc4random_uniform(UInt32(255)))
            let green = CGFloat(arc4random_uniform(UInt32(255)))
            let blue = CGFloat(arc4random_uniform(UInt32(255)))
            
            if #available(iOS 10.0, *) {
                vc.view.backgroundColor = UIColor(displayP3Red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
            } else {
                // Fallback on earlier versions
            }
            
            let nav = IIBaseNavViewController(rootViewController: vc)
            nav.navigationBar.setBackgroundImage(UIImage(named:"navigationbarBackgroundWhite"), for: .default)
            addChildViewController(nav)
            
        }
        
        setValue(IIRootTabBar(), forKey: "tabBar")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
