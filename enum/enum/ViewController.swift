//
//  ViewController.swift
//  enum
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enum Signal {
            case Blue
            case Yellow
            case Red
            func meaning() -> String {
                switch(self) {
                case .Blue:
                    return "進め"
                case .Yellow:
                    return "注意"
                case .Red:
                    return "止れ"
                }
            }
        }
        
        let s = Signal.Yellow
        print(s.meaning())    // 注意
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

