//
//  ViewController.swift
//  tuple_array_dictionary
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /** タプル */
        let item = ("ジュース", 100, 0.08, 108)
        print("商品名=\(item.0), 税抜き価格=\(item.1)円, 消費税=\(item.2 * 100)%, 税込み価格=\(item.3)円")
        // 商品名=ジュース, 税抜き価格=100円, 消費税=8.0%, 税込み価格=108円
        
        let (name, price, tax, priceWithTax) = ("ジュース", 100, 0.08, 108)
        print("商品名=\(name), 税抜き価格=\(price)円, 消費税=\(tax * 100)%, 税込み価格=\(priceWithTax)円")
        
        let items = (name:"ジュース", price:100, tax:0.08, priceWithTax:108)
        print("商品名=\(items.name), 税抜き価格=\(items.price)円, 消費税=\(items.tax * 100)%, 税込み価格=\(items.priceWithTax)円")
        
        
        
        /** 配列 */
        let party: [String] = ["勇者", "戦士", "魔法使い", "僧侶"]
        print(party[2])   // 魔法使い
        let hitPoints: [Int] = [140, 210, 85, 52]
        print(hitPoints[1]) // 210
        
        let a: [Int] = []
        if a.isEmpty {
            print("配列は空です。")
        }
        
        var group = ["勇者", "戦士", "魔法使い", "僧侶"]
        group.append("盗賊")   // ["勇者", "戦士", "魔法使い", "僧侶", "盗賊"]
        print(group)
        var group1 = ["勇者", "戦士", "魔法使い", "僧侶"]
        group1 += ["侍", "錬金術師"]  // ["勇者", "戦士", "魔法使い", "僧侶", "盗賊", "侍", "錬金術師"]
        
        
        // 要素の変更
        var group2 = ["勇者", "戦士", "魔法使い", "僧侶"]
        group2[2] = "盗賊" // ["勇者", "戦士", "盗賊", "僧侶"]
        //         group2[4] = "侍" // インデックス範囲外を指定すると実行時エラーになる
        //       party[2] = 100  // 配列の宣言時と異なる値を代入するとコンパイル時エラーになる
        // 要素の消去
        var group3 = ["勇者", "戦士", "魔法使い", "僧侶"]
        group3.remove(at:2)  // ["勇者", "戦士", "僧侶"]
        
        //イティレーション
        let group4 = ["勇者", "戦士", "魔法使い", "僧侶"]
        for chara in group4 {
            print(chara)
        }
        
        
        //コピー
        let group5 = ["勇者", "戦士", "魔法使い", "僧侶"]
        var party2 = party
        party2[1] = "盗賊"
        print(group5)      //  ["勇者", "戦士", "魔法使い", "僧侶"]  元の値のまま
        print(party2)     //  ["勇者", "盗賊", "魔法使い", "僧侶"]
        
        
        
        /** ディクショナリ */
        let group6: Dictionary<String, String> = ["ルフィ": "船長", "ゾロ": "剣士", "ナミ":"航海士"]
        if let job = group6["ゾロ"] {
            print(job)      // 剣士
        }
        let items1: Dictionary<String, Int> = ["りんご": 100, "みかん": 300, "バナナ": 150]
        if let price = items1["みかん"] {
            print(price)    // 300
        }
        
        var group7 = ["ルフィ": "船長", "ゾロ": "剣士", "ナミ": "航海士"]
        group7["サンジ"] = "コック"    // ["ルフィ": "船長", "ゾロ": "剣士", "ナミ": "航海士", "サンジ": "コック"]
        
        var items2 = ["りんご": 100, "バナナ": 150, "みかん": 300]
        items2["バナナ"] = 200  // ["りんご": 100, "バナナ": 200, "みかん": 300]
        items2["いちご"] = 400  // ["いちご": 400, "バナナ": 200, "りんご": 100, "みかん": 300]
        
        var group8 = ["ルフィ": "船長", "ゾロ": "剣士", "ウソップ": "狙撃手", "ナミ":"航海士"]
        print("パーティの人数は、\(group8.count)人") // パーティの人数は、4人
        group8["ウソップ"] = nil // ["ルフィ": "船長", "ゾロ": "剣士", "ナミ":"航海士"]
        print("パーティの人数は、\(group8.count)人") // パーティの人数は、3人
        
        // イティレーション
        let items3 = ["りんご": 100, "みかん": 300, "バナナ": 150]
        for (name, price) in items3 {
            print("\(name): \(price)円")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

