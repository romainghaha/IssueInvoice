//
//  IIFixedValue.swift
//  IssueInvoice
//
//  Created by 苏强 on 2018/2/23.
//  Copyright © 2018年 苏强. All rights reserved.
//

import UIKit

let cellMargin: CGFloat = 30

let cellTextMargin: CGFloat = 10

let cellHeaderHeiht: CGFloat = 50 + 5 + 10

let cellFooterHeiht: CGFloat = 44 + 10

let screenWidth = UIScreen.main.bounds.width

let screenHeight = UIScreen.main.bounds.height

let cellImageMaxH: CGFloat = 1500

let cellImageBreakH: CGFloat = 250

let IINavigationBarHeight: CGFloat = 44.0

/**
 
 iPhoneX的可布局范围是734（包括TabBar的高度 44 和navigationBar的高度 44， 不包括statusBar的高度），正常机型的尺寸是（height - 20）的可布局范围，不包括statusBar，这样812 - 734 = 78，多出来的内容，78 - 34（底下的内容是34） = 44，上面多出来的的是44，44 - 20（statusBar的高度） = 24 ，24 是上面多出来的内容。
 
 */
let iPhoneXHeight: CGFloat = 812

let iPhoneXTopHeight: CGFloat = 24

let iPhoneXBottomHeight: CGFloat = 34

let IISelectTabberNotification = Notification.Name(rawValue: "IISelectTabberNotification")
