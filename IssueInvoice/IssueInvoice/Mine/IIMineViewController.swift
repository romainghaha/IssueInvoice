//
//  IIMineViewController.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

class IIMineViewController: UITableViewController,IIUserNologinHeaderViewDelegate {
    
    func jumpToMoreLoginController() {
        //加载UIStoryBoard
        navigationController?.pushViewController(UIStoryboard(name: "IIMoreLoginController", bundle: nil).instantiateViewController(withIdentifier: "IIMoreLoginController") as! IIMoreLoginController, animated: true)

    }

    /// 懒加载 头部
    private lazy var headerView = Bundle.main.loadNibNamed("IIUserNologinHeaderView", owner: nil, options: nil)?.last as! IIUserNologinHeaderView
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        self.view.backgroundColor = UIColor.darkGray
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
        headerView.delegate = self
        tableView.separatorStyle = .none
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension IIMineViewController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 1 ? 0 : 10
    }
    
    // 每组头部视图
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 10))
        return view
    }
    
    // 行高
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 && indexPath.row == 0 {
//            return (concerns.count == 0 || concerns.count == 1) ? 40 : 114
//        }
        return 40
    }
    
    // 组数
    override func numberOfSections(in tableView: UITableView) -> Int {
//        return sections.count
        return 3
    }
    
    // 每组的行数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sections[section].count
        return 2
    }
    
    // cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        if indexPath.section == 3 && indexPath.row == 1 { // 跳转到系统设置界面
//            let settingVC = SettingViewController()
//            settingVC.navigationItem.title = "设置"
//            navigationController?.pushViewController(settingVC, animated: true)
//        }
        print("点击了cell")
    }
}
