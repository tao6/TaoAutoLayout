//
//  TaoHorizontalViews.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoHorizontalViews: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.whiteColor()
        
        // 左边的控件
        let lBtn = UIButton(title: "左", bgColor: UIColor.grayColor())
        addSubview(lBtn)
        
        // 中间的控件
        let cBtn = UIButton(title: "中", bgColor: UIColor.redColor())
        addSubview(cBtn)
        
        // 右边的控件
        let rBtn = UIButton(title: "右", bgColor: UIColor.magentaColor())
        addSubview(rBtn)
        
        tao_HorizontalTile([lBtn, cBtn, rBtn], insets: UIEdgeInsets.init(top: 74, left: 10, bottom: 10, right: 10))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
