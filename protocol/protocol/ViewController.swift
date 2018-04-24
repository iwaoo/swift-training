//
//  ViewController.swift
//  protocol
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hoge = Hoge()
        let piyo = Piyo()
        hoge.delegate = piyo    // 代理人を指定。
        print(hoge.say())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

