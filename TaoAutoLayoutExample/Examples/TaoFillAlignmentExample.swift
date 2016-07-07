//
//  TaoFillAlignmentExample.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoFillAlignmentExample: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.whiteColor()

        // 全屏的button
        let fillBtn = UIButton(title: "我是一个全屏的button")
        addSubview(fillBtn)
        fillBtn.backgroundColor = UIColor.redColor()
        fillBtn.tao_Fill(self)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
