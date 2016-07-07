//
//  TaoExampleViewController.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

class TaoExampleViewController: UIViewController {
    var exampleInfo: taoExampleInfo?
    
    override func loadView() {
        let demoView = exampleInfo!.view
        view = demoView

    }
}
