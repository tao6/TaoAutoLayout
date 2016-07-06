//
//  TaoConstraintExmple.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoConstraintExmple: UIView {
    
    var btn: UIButton?
    var btnWidth: NSLayoutConstraint?
    var btnHeight: NSLayoutConstraint?
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        btn = UIButton(title: "点我点我", bgColor: UIColor.grayColor())
        addSubview(btn!)
        btn?.addTarget(self, action: #selector(TaoConstraintExmple.clickMe), forControlEvents: UIControlEvents.TouchUpInside)
        let cons = btn!.tao_AlignInner(type: tao_AlignType.CenterCenter, referView: self, size: CGSizeMake(100, 100))
        btnWidth = btn!.tao_Constraint(cons, attribute: NSLayoutAttribute.Width)
        btnHeight = btn!.tao_Constraint(cons, attribute: NSLayoutAttribute.Height)
    }
    
    
    func clickMe() {
        self.btnWidth?.constant = 200
        self.btnHeight?.constant = 200
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 10.0, options: UIViewAnimationOptions(rawValue: 0), animations: {
            self.layoutIfNeeded()
            }, completion: { _ in
                
                self.btnWidth?.constant = 100
                self.btnHeight?.constant = 100
                
                UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10.0, options: UIViewAnimationOptions(rawValue: 0), animations: {
                    self.layoutIfNeeded()
                    }, completion: { _ in
                        
                })
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
