//
//  ViewController.swift
//  initializer
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let accountNo1 = Account(name: "山田", age: 10, sex: "女性", good_point: "objective-c")
        print("\(accountNo1.name)君は\(accountNo1.good_point)が得意な\(accountNo1.age)歳です。")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

