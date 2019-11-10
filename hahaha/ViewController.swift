//
//  ViewController.swift
//  hahaha
//
//  Created by 杨雨璋 on 2019/10/27.
//  Copyright © 2019 杨雨璋. All rights reserved.
//

import UIKit

var someStrs: [String] = []
//func isExisted(name: String) -> Bool {
//    for i in someStrs {
//        if name == i { return true}
//    }
//
//    return false
//}
var content = [String]()


class ViewController: UIViewController {
    
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "通讯录"
        appendContent()
        initview()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPerson))
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        appendContent()
        tableView.reloadData()
    }
    
    @objc func addPerson() {
        navigationController?.pushViewController(Index_0(), animated: true) 
        
        
    }
    func initview() {
        view.backgroundColor = .white
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
        tableView.backgroundColor = .white
        tableView.bounces = true
        tableView.allowsSelection = true
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    
    
    
    
    
    
    func appendContent() {
        

        for i in someStrs {
            content.append(i)
        }
    }
   
    
    }
  

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
            navigationController?.pushViewController(personX(), animated: true)
       
         tableView.deselectRow(at: indexPath, animated: true)
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = content[indexPath.row].components(separatedBy: "#")[0]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}


