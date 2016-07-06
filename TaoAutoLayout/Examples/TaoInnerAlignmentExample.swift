//
//  TaoInnerAlignmentExample.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoInnerAlignmentExample: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        let iBtnSize = CGSizeMake(50, 50)
        // 外部的 external
        let eBtn = UIButton(title: "外部视图", bgColor: UIColor.grayColor())
        addSubview(eBtn)
        eBtn.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(250, 250))
        
        // 上左
        let tlBtn = UIButton(title: "上左", bgColor: UIColor.redColor())
        eBtn.addSubview(tlBtn)
        tlBtn.tao_AlignInner(type: tao_AlignType.TopLeft, referView: eBtn, size: iBtnSize)
        
        // 上中
        let tcBtn = UIButton(title: "上中", bgColor: UIColor.magentaColor())
        eBtn.addSubview(tcBtn)
        tcBtn.tao_AlignInner(type: tao_AlignType.TopCenter, referView: eBtn, size: iBtnSize)
        
        // 上右
        let trBtn = UIButton(title: "上右", bgColor: UIColor.greenColor())
        eBtn.addSubview(trBtn)
        trBtn.tao_AlignInner(type: tao_AlignType.TopRight, referView: eBtn, size: iBtnSize)
        
        // 中左
        let clBtn = UIButton(title: "中左", bgColor: UIColor.darkGrayColor())
        eBtn.addSubview(clBtn)
        clBtn.tao_AlignInner(type: tao_AlignType.CenterLeft, referView: eBtn, size: iBtnSize)
        
        // 中中
        let ccBtn = UIButton(title: "中中", bgColor: UIColor.lightGrayColor())
        eBtn.addSubview(ccBtn)
        ccBtn.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: eBtn, size: iBtnSize)
        
        // 中右
        let crBtn = UIButton(title: "中右", bgColor: UIColor.cyanColor())
        eBtn.addSubview(crBtn)
        crBtn.tao_AlignInner(type: tao_AlignType.CenterRight, referView: eBtn, size: iBtnSize)
        
        // 下左
        let blBtn = UIButton(title: "下左", bgColor: UIColor.yellowColor())
        eBtn.addSubview(blBtn)
        blBtn.tao_AlignInner(type: tao_AlignType.BottomLeft, referView: eBtn, size: iBtnSize)
        
        // 下中
        let bcBtn = UIButton(title: "下中", bgColor: UIColor.orangeColor())
        eBtn.addSubview(bcBtn)
        bcBtn.tao_AlignInner(type: tao_AlignType.BottomCenter, referView: eBtn, size: iBtnSize)
        
        // 下右
        let brBtn = UIButton(title: "下右", bgColor: UIColor.blueColor())
        eBtn.addSubview(brBtn)
        brBtn.tao_AlignInner(type: tao_AlignType.BottomRight, referView: eBtn, size: iBtnSize)
        
        // 上左偏移
        let tloBtn = UIButton(title: "上左偏", bgColor: UIColor.purpleColor())
        eBtn.addSubview(tloBtn)
        tloBtn.tao_AlignInner(type: tao_AlignType.TopLeft, referView: eBtn, size: iBtnSize, offset: CGPointMake(50, 50))
        
        // 上右偏移
        let troBtn = UIButton(title: "上右偏", bgColor: UIColor.brownColor())
        eBtn.addSubview(troBtn)
        troBtn.tao_AlignInner(type: tao_AlignType.TopRight, referView: eBtn, size: iBtnSize, offset: CGPointMake(-50, 50))
        
        // 下左偏移
        let bloBtn = UIButton(title: "下左偏", bgColor: UIColor(red: 0.57, green: 0.72, blue: 0.84, alpha: 1))
        eBtn.addSubview(bloBtn)
        bloBtn.tao_AlignInner(type: tao_AlignType.BottomLeft, referView: eBtn, size: iBtnSize, offset: CGPointMake(50, -50))
        
        //下右偏移
        let broBtn = UIButton(title: "下右偏", bgColor: UIColor(red: 0.79, green: 0.23, blue: 0.32, alpha: 1))
        eBtn.addSubview(broBtn)
        broBtn.tao_AlignInner(type: tao_AlignType.BottomRight, referView: eBtn, size: iBtnSize, offset: CGPointMake(-50, -50))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
