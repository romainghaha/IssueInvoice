//
//  IIUserNologinHeaderView.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

protocol IIUserNologinHeaderViewDelegate: NSObjectProtocol {
    func jumpToMoreLoginController()
}

class IIUserNologinHeaderView: UIView {
    
    public weak var delegate: IIUserNologinHeaderViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    
    @IBAction func moreLoginButtonClickAction(_ sender: Any) {
        delegate?.jumpToMoreLoginController()
    }
}
