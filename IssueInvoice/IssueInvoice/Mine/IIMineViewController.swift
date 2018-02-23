//
//  IIMineViewController.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

class IIMineViewController: UITableViewController {

    /// 懒加载 头部
    private lazy var headerView = Bundle.main.loadNibNamed("IIUserNologinHeaderView", owner: nil, options: nil)?.last as! UIView
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(named:"navigation_background_white"), for: .default)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
        tableView.tableHeaderView = headerView
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
