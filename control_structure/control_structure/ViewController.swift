//
//  ViewController.swift
//  control_structure
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = [3, 7, 9, 12, 8, 5]
        for number in list {
            if number % 2 == 0 {
                print("number \(number) is even")
            } else {
                print("number \(number) is odd")
            }
        }
        
        
        var number = 1
        while number < 10 {
            print(number)
            number += 1
        }
        
        
        let age = 5
        switch age {
        case 0...6:
            print("kindergarden kid")
        case 7...12:
            print("primary school student")
        case 13...15:
            print("junior high school student")
        case 16...18:
            print("high school student")
        case 19...22:
            print("college student")
        default:
            print("business person")
        }
        // => kindergarden kid
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

