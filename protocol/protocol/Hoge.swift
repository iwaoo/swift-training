//
//  Hoge.swift
//  protocol
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

// プロトコルを作る。
protocol Mochi {
    func sayHello() -> String
}

class Hoge: NSObject {
    // ここで、プロトコルに従うクラスのインスタンスを用意する。
    var delegate: Mochi!
    func say() -> String {
        return delegate.sayHello()
    }
}
