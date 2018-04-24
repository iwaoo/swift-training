//
//  ViewController.swift
//  function
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showEncounterMessage(monster: "スライム", count:3 ) // 関数の呼び出し
        let message = getEncounterMessage(monster: "スライム", count: 4)
        print(message)
        getEncounterMessage(monster: "ゴブリン", count: 1)  // 戻り値を受け取らなくてもエラーにはならない
        print(getEncounterMessage(monster: "ゴブリン", count: 1))
        
        // タプルを戻り値とする
        let showa = getEraInfo(era: .Showa)
        print("\(showa.name)\(showa.startYear)年")
        
        // 無名関数
        let multiplication1 = calculate(a: 10, b: 20, function: { $0 * $1 })
        print(multiplication1)
        let addition = calculate(a: 10, b: 20, function: { $0 + $1 })
        print(addition)
        
        sayHello { $0 + ", World" } // Hello, World
        sayHello { "Hi, " + $0 }    // Hi, Hello
        
        // クロージャ
        var counter = incrementer()
        print(counter())
        print(counter())
        print(counter())
    }
    
    /* String型とInt型の引数を受け取る関数 */
    func showEncounterMessage(monster: String, count: Int) {
        print("\(count)匹の\(monster)が現れた！")
    }
    
    /* String型とInt型の引数を受け取り、String型を返す関数 */
    func getEncounterMessage(monster: String, count: Int) -> String {
        return "\(count)匹の\(monster)が現れた！"
    }
    
    /* タプルを戻り値とする */
    // 元号
    enum Era {
        case Meiji, Taisho, Showa, Heisei
    }
    // 指定された元号の名前と開始年を返す
    func getEraInfo(era: Era) -> (name: String, startYear: Int) {
        switch era {
        case .Meiji:
            return ("明治", 1868)
        case .Taisho:
            return ("大正", 1912)
        case .Showa:
            return ("昭和", 1926)
        case .Heisei:
            return ("平成", 1989)
        }
    }
    
    /* 無名関数 */
    func calculate(a: Int, b: Int, function: (Int, Int) -> Int) -> Int {
        return function(a, b)
    }
    
    func sayHello(greeting:(String) -> String) -> () {// 引数が関数のみの場合は、関数名の後の()も不要です。
        print(greeting("Hello"))
    }
    
    
    /* クロージャ */
    func incrementer() -> ( () -> Int ) {
        var count = 0
        func increment() -> Int {
            count += 1
            return count
        }
        return increment
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

