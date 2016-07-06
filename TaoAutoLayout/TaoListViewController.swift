//
//  TaoListViewController.swift
//  TaoAutoLayout
//
//  Created by 刘涛 on 16/7/6.
//  Copyright © 2016年 tao6. All rights reserved.
//

import UIKit

// 结构体
struct taoExampleInfo {
    var name: String
    var view: UIView
}

class TaoListViewController: UITableViewController {
    
    lazy var taoExampleList: [taoExampleInfo] = {
        return [taoExampleInfo(name: "tao_Fill", view: TaoFillAlignmentExample()),
                taoExampleInfo(name: "tao_AlignInner", view: TaoInnerAlignmentExample()),
                taoExampleInfo(name: "tao_AlignVertical", view: TaoVerticalAlignmentExample()),
                taoExampleInfo(name: "tao_AlignHorizontal", view: TaoHorizontalAlignmentExample()),
                taoExampleInfo(name: "tao_HorizontalTile", view: TaoHorizontalViews()),
                taoExampleInfo(name: "tao_VerticalTile", view: TaoVerticalViews()),
                taoExampleInfo(name: "tao_Constraint", view: TaoConstraintExmple())
                ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TaoAutoLayout"
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return taoExampleList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath)
        tableViewCell.textLabel?.text = taoExampleList[indexPath.row].name
        return tableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let exampleVC = TaoExampleViewController()
        exampleVC.exampleInfo = taoExampleList[indexPath.row]
        exampleVC.title = taoExampleList[indexPath.row].name
        navigationController?.pushViewController(exampleVC, animated: true)
    }

}
