//
//  ViewController.swift
//  data_type
//
//  Created by 新井岩生 on 2018/04/23.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 数値型
        let pi = 3.14159   // デフォルトはDouble
        var angle: Float = 45.2
        var radian = Double(angle) * pi / 180.0
        let height = 170 + 2.345    // Double
        
        print(height)
        
        
        // 論理型
        var answer: Bool
        var success = true
        let result = (100 == 200)   // false
        print(result)
        
        
        // 文字型
        let name: String
        var job = "戦士"
        var number = String(123)   // "123"
        var name1 = ""
        var anme2 = String()
        print(number)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}

