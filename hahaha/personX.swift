//
//  personX.swift
//  hahaha
//
//  Created by 杨雨璋 on 2019/10/27.
//  Copyright © 2019 杨雨璋. All rights reserved.
//

import UIKit
import SnapKit

class personX: UIViewController {
    var someStrs: [String] = []
    override func viewDidLoad() {
              super.viewDidLoad()
           navigationItem.title = "联系人"
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = content[indexPath.row].components(separatedBy: "#")[0]
            cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
            return cell
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 50
        }
        

        
        initview()
//        information()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editPerson))
        
        
    }
    @objc func editPerson() {
           navigationController?.pushViewController(edit(), animated: true)
        
        
    }
           
    
    func initview() {
           view.backgroundColor = .white
           tableView.backgroundColor = .green
           tableView.bounces = true
           tableView.allowsSelection = true
           view.addSubview(tableView)
    }
    

}

