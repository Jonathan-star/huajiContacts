//
//  editPerson.swift
//  hahaha
//
//  Created by 杨雨璋 on 2019/10/27.
//  Copyright © 2019 杨雨璋. All rights reserved.
//

import UIKit
import SnapKit


class edit: UIViewController {
    override func viewDidLoad() {
    super.viewDidLoad()
        navigationItem.title = "编辑"
        initview()
    }
    func initview() {
           view.backgroundColor = .white
           tableView.backgroundColor = .green
           tableView.bounces = true
           tableView.allowsSelection = true
           view.addSubview(tableView)
    }
}
// 可用if else将两个页面合成
