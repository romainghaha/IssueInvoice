//
//  IIVerticalButton.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

class IIVerticalButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if imageView == nil {
            return
        }
        imageView?.frame = CGRect(x: 0, y: 0, width: imageView!.frame.width, height: imageView!.frame.height)
        titleLabel?.frame = CGRect(x: 0, y: imageView!.frame.height, width: frame.width, height: frame.height - imageView!.frame.height)
    }

}

extension IIVerticalButton {
    
    fileprivate func setupUI() {
        titleLabel?.textAlignment = .center
    }
}
