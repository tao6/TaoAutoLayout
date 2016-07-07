//
//  TaoHorizontalAlignmentExample.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoHorizontalAlignmentExample: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.whiteColor()
        
        let smallSize = CGSizeMake(50, 50);
        
        // 中心参照视图
        let centerBtn = UIButton(title: "中心参照视图", bgColor: UIColor.magentaColor())
        addSubview(centerBtn)
        centerBtn.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(100, 400))
        
        // 上左
        let tlBtn = UIButton(title: "上左", bgColor: UIColor.grayColor())
        addSubview(tlBtn)
        tlBtn.tao_AlignHorizontal(type: tao_AlignType.TopLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(-10, 0))
        
        // 上右
        let trBtn = UIButton(title: "上右", bgColor: UIColor.lightGrayColor())
        addSubview(trBtn)
        trBtn.tao_AlignHorizontal(type: tao_AlignType.TopRight, referView: centerBtn, size: smallSize, offset: CGPointMake(10, 0))
        
        // 中左
        let clBtn = UIButton(title: "中左", bgColor: UIColor.darkGrayColor())
        addSubview(clBtn)
        clBtn.tao_AlignHorizontal(type: tao_AlignType.CenterLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(-10, 0))
        
        // 中右
        let crBtn = UIButton(title: "中右", bgColor: UIColor.cyanColor())
        addSubview(crBtn)
        crBtn.tao_AlignHorizontal(type: tao_AlignType.CenterRight, referView: centerBtn, size: smallSize, offset: CGPointMake(10, 0))
        
        // 下左
        let blBtn = UIButton(title: "下左", bgColor: UIColor.yellowColor())
        addSubview(blBtn)
        blBtn.tao_AlignHorizontal(type: tao_AlignType.BottomLeft, referView: centerBtn, size: smallSize, offset: CGPointMake(-10, 0))
        
        // 下右
        let brBtn = UIButton(title: "下右", bgColor: UIColor.blueColor())
        addSubview(brBtn)
        brBtn.tao_AlignHorizontal(type: tao_AlignType.BottomRight, referView: centerBtn, size: smallSize, offset: CGPointMake(10, 0))


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
