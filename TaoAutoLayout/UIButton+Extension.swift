//
//  UIButton+Extension.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

extension UIButton {
    convenience init(title: String, bgColor: UIColor = UIColor.lightGrayColor()) {
        
        self.init(frame: CGRectZero)
        setTitle(title, forState: UIControlState.Normal)
        setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        backgroundColor = bgColor
        titleLabel?.font = UIFont.systemFontOfSize(11)
    }
}
