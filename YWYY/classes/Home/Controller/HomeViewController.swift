//
//  HomeViewController.swift
//  YWYY
//
//  Created by 张振宇 on 2019/4/3.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit
import SwiftyJSON
import SnapKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 父视图
        let homeView = UIView()
        homeView.frame = CGRect(x: 0, y: 0, width: kScreenW, height: kScreenH)
        homeView.center = view.center
        homeView.backgroundColor = UIColor.white
        view.addSubview(homeView)
        // 搜索按钮
        let searchBtn = UIButton()
        searchBtn.backgroundColor = UIColor.white
        searchBtn.setTitle("请输入商品名称", for: .normal)
        searchBtn.setTitleColor(UIColor.gray, for: .normal)
        //字体
        searchBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //设置圆角
        searchBtn.layer.masksToBounds = true
        searchBtn.layer.cornerRadius = 15.0
        //设置边框
        searchBtn.layer.borderColor = UIColor.gray.cgColor
        searchBtn.layer.borderWidth = 1
        //设置间距
        searchBtn.contentEdgeInsets = UIEdgeInsets(top: 20,left: 0, bottom: 20, right: 0);
        //无参数点击事件
        searchBtn.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        homeView.addSubview(searchBtn)
        
        searchBtn.snp.makeConstraints { (make) in
            make.width.equalTo(kScreenW)        // 宽
            make.height.equalTo(30)        // 高
            make.left.equalToSuperview().offset(20)     // 当前视图的左边距离父视图的左边：
            make.right.equalToSuperview().offset(-20)   // 当前视图的右边距离父视图的右边：
            //适配
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            } else {
                make.top.equalTo(topLayoutGuide.snp.top).offset(10)
            }
        }
        //首页导航栏
        let homeTabbar = UITabBar()
        homeTabbar.frame = CGRect(x: 0, y: 0, width: kScreenW, height: kScreenH)
        
        
    }
    
    //点击事件
    @objc  func buttonClick(){
        print("点击了button")
        
    }
    
    

}
