//
//  Account.swift
//  initializer
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class Account: NSObject {
    var name: String // 名前
    var age: Int // 最大ヒットポイント
    var sex: String // ヒットポイント
    
    var good_point: String
    
    // イニシャライザ
    init(name: String, age: Int, sex: String, good_point: String) {
        self.name = name
        self.age = age
        self.sex = sex
        self.good_point = good_point
    }
}
