//
//  TaoVerticalViews.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoVerticalViews: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.whiteColor()
        
        // 上边控件
        let tBtn = UIButton(title: "上", bgColor: UIColor.yellowColor())
        addSubview(tBtn)
        
        // 中间的控件
        let cBtn = UIButton(title: "中", bgColor: UIColor.blueColor())
        addSubview(cBtn)
        
        // 下边的控件
        let bBtn = UIButton(title: "下", bgColor: UIColor.magentaColor())
        addSubview(bBtn)
        
        tao_VerticalTile([tBtn, cBtn, bBtn], insets: UIEdgeInsets.init(top: 74, left: 10, bottom: 10, right: 10))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
