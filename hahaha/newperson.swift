//
//  newperson.swift
//  hahaha
//
//  Created by 杨雨璋 on 2019/10/27.
//  Copyright © 2019 杨雨璋. All rights reserved.
//

import UIKit
import SnapKit

var tableView = UITableView()


struct contacts {
    var contactFirstName: String
    var contactFamilyName: String
    var contactPhonenumber: String
    
}

class Index_0: UIViewController{
    
    var blanks = UITextField()
    var text1 = UITextField()
    var text2 = UITextField()
    var text3 = UITextField()
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        
//        let text1 = UITextField()
        text1.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.center.equalTo(self.view)
        text1.borderStyle = .roundedRect
        text1.keyboardType = .namePhonePad
        text1.placeholder = "family name"
        self.view.addSubview(text1)
        navigationItem.title = "新建联系人"
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(complete))
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
//            let text2 = UITextField()
            //place
            text2.snp.makeConstraints{ (make) -> Void in
                make.width.equalTo(200)
                make.height.equalTo(50)
                make.centerX.equalTo(self.view)
                make.top.equalTo(text1.snp.bottom).offset(20)
            text2.borderStyle = .roundedRect
            text2.placeholder = "first name"
            text2.keyboardType = .namePhonePad
            self.view.addSubview(text2)
//            let text3 = UITextField()
            //place
                text3.snp.makeConstraints{ (make) -> Void in
                    make.width.equalTo(200)
                    make.height.equalTo(50)
                    make.centerX.equalTo(self.view)
                    make.top.equalTo(text2.snp.bottom).offset(20)
            text3.borderStyle = .roundedRect
            text3.keyboardType = .numberPad
            text3.placeholder = "phone number"
            self.view.addSubview(text3)
        
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
}
}
   @objc func complete() {
    let newperson = contacts(contactFirstName: self.text2.text!, contactFamilyName: self.text1.text!, contactPhonenumber: self.text3.text!)
    let nameString = "\(newperson.contactFirstName)\(newperson.contactFamilyName)#\(newperson.contactPhonenumber)"
    if isExisted(name: nameString) == true {
        print("联系人已存在")
    }
        
    

        
        
    else {
        print(newperson.contactFirstName)
        someStrs.append(nameString)//此时已经存入数组
        print(someStrs.self)
        navigationController?.popViewController(animated: true)
        
    }
    }
    @objc func cancel() {
        navigationController?.popToRootViewController(animated: true)
        
    }
    func isExisted(name: String) -> Bool {
        for i in someStrs {
            if name == i { return true}
        }
        
        return false
    }
//    func isAccomplished(name: String) -> Bool {
//        if (self.text3.text == nil) || (self.text2.text == nil) || (self.text1.text == nil)  {
//            return false
//
//        }
//        return true
//
//        }
    
    }

    
        
        
        
        
        
        


   
        
        
    
