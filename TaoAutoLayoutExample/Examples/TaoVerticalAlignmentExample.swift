//
//  TaoVerticalAlignmentExample.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoVerticalAlignmentExample: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        let smallSize = CGSizeMake(50, 50);
        
        // 中心参照视图
        let centerBtn = UIButton(title: "中心参照视图", bgColor: UIColor.magentaColor())
        addSubview(centerBtn)
        centerBtn.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(300, 50))
        
        // 上左
        let tlBtn = UIButton(title: "上左", bgColor: UIColor.grayColor())
        addSubview(tlBtn)
        tlBtn.tao_AlignVertical(type: tao_AlignType.TopLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(0, -10))
        
        // 上中
        let tcBtn = UIButton(title: "上中", bgColor: UIColor.yellowColor())
        addSubview(tcBtn)
        tcBtn.tao_AlignVertical(type: tao_AlignType.TopCenter, referView: centerBtn, size: smallSize, offset: CGPointMake(0, -10))
        
        // 上右
        let trBtn = UIButton(title: "上右", bgColor: UIColor.lightGrayColor())
        addSubview(trBtn)
        trBtn.tao_AlignVertical(type: tao_AlignType.TopRight, referView: centerBtn, size: smallSize, offset: CGPointMake(0, -10))
        
        // 下左
        let blBtn = UIButton(title: "下左", bgColor: UIColor.greenColor())
        addSubview(blBtn)
        blBtn.tao_AlignVertical(type: tao_AlignType.BottomLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(0, 10))
        
        // 下中
        let bcBtn = UIButton(title: "下中", bgColor: UIColor.purpleColor())
        addSubview(bcBtn)
        bcBtn.tao_AlignVertical(type: tao_AlignType.BottomCenter, referView: centerBtn, size: smallSize, offset: CGPointMake(0, 10))
        
        // 下右
        let brBtn = UIButton(title: "下右", bgColor: UIColor.brownColor())
        addSubview(brBtn)
        brBtn.tao_AlignVertical(type: tao_AlignType.BottomRight, referView: centerBtn, size: smallSize, offset: CGPointMake(0, 10))

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
