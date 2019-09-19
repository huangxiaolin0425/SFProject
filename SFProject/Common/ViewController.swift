//
//  ViewController.swift
//  SFProject
//
//  Created by wemac on 2019/9/18.
//  Copyright © 2019 wemac. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var loginBtn = UIButton()
    var arrayList = [newModel]()
    var tableView = UITableView();
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.loginBtn  = UIButton.init(type: UIButton.ButtonType.custom)
        self.loginBtn.backgroundColor = UIColor.red
        self.loginBtn.layer.cornerRadius = 5
        self.loginBtn .setTitle("加载", for: UIControl.State.normal)
        self.loginBtn .addTarget(self, action: #selector(loading(button:)), for: UIControl.Event.touchUpInside)
        self.view .addSubview(self.loginBtn)
        self.loginBtn.snp_makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.bottom.equalTo(-HYDevice_SafeArea_BottomHeight)
            make.height.equalTo(50)
        }
        
        self.tableView = UITableView.init()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view .addSubview(self.tableView)
        self.tableView.snp_makeConstraints { (make) in
            make.left.top.right.equalTo(self.view)
            make.bottom.equalTo(self.loginBtn.snp_top)
        }
        self.tableView.register(newTableViewCell.classForCoder(), forCellReuseIdentifier: NSStringFromClass(newTableViewCell.classForCoder()))
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var customCell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(newTableViewCell.classForCoder())) as? newTableViewCell
        if customCell == nil {
            customCell = newTableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: NSStringFromClass(newTableViewCell.classForCoder()))
        }
        customCell?.cellModel(model: self.arrayList[indexPath.row])
        return customCell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    @objc func loading(button : UIButton) -> Void {
        self.loginBtn .setTitle("正在加载....", for: UIControl.State.normal)
        NetworkTool .makePostRequest(baseUrl: "", parameters: ["":"" as AnyObject], successHandler: { (model) in
            /**
             得到数据模型后 添加在view视图上
             */
            self.arrayList = newModelList.init(model).market_list
            print(self.arrayList[0].url)
            self.loginBtn .setTitle("重新加载", for: UIControl.State.normal)
            self.tableView .reloadData()
        }, errorMsgHandler: { (error) in
            self.loginBtn .setTitle("加载失败", for: UIControl.State.normal)

        }) { (Error) in
            self.loginBtn .setTitle("重新失败", for: UIControl.State.normal)

        }
    }

}

