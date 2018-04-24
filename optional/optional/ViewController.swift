//
//  ViewController.swift
//  optional
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* 宣言 */
        var name: String?
        name = nil
        // オプショナル型でない変数にはnilを代入できない。
        var name1: String
//        name1 = nil  // エラーになる。
        
        /* オプショナルバインディング */
        var price: Int?
        if let p = price {
            print("価格：\(p)円")
        } else {
            print("価格：未定")
        }
        var price1: Int? = 100
        
        if var p = price1 {
            p -= 10
            print("割引価格：\(p)円")
        }
        
        /* アンラップ */
        var price2: Int?
        price2 = 300
        print("税込み価格は\(Int(Double(price2!) * 1.08))円")   // 変数名の後ろに!をつけてアンラップ
        
        // 非オプショナル型を受けとるには関数の呼び出し側でアンラップが必要
        func calculateTax(price: Int) -> Int {
            return Int(Double(price) * 1.08)
        }
        var price3: Int?
        price3 = 300
        let priceWithTax = calculateTax(price: price3!)
        
        var price4: Int?
 //       print("価格は\(price4!)円")   // エラー
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

