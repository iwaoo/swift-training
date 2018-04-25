//
//  ViewController.swift
//  actionSheet
//
//  Created by 新井岩生 on 2018/04/25.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func dispAlert(_ sender: UIButton) {
        // ① UIAlertControllerクラスのインスタンスを生成
        // タイトル, メッセージ, Alertのスタイルを指定する
        // 第3引数のpreferredStyleでアラートの表示スタイルを指定する
        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "保存してもいいですか？", preferredStyle:  UIAlertControllerStyle.actionSheet)
        
        // Defaultボタン
        let defaultAction_1: UIAlertAction = UIAlertAction(title: "default_1", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("defaultAction_1")
        })
        let defaultAction_2: UIAlertAction = UIAlertAction(title: "default_2", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("defaultAction_2")
        })
        
        // Cancelボタン
        let cancelAction: UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel, handler:{
            (action: UIAlertAction!) -> Void in
            print("cancelAction")
        })
        
        // Destructiveボタン
        let destructiveAction_1: UIAlertAction = UIAlertAction(title: "destructive_1", style: UIAlertActionStyle.destructive, handler:{
            (action: UIAlertAction!) -> Void in
            print("destructiveAction_1")
        })
        let destructiveAction_2: UIAlertAction = UIAlertAction(title: "destructive_2", style: UIAlertActionStyle.destructive, handler:{
            (action: UIAlertAction!) -> Void in
            print("destructiveAction_2")
        })
        
        // ③ UIAlertControllerにActionを追加
        alert.addAction(defaultAction_1)
        alert.addAction(defaultAction_2)
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction_1)
        alert.addAction(destructiveAction_2)
        
        // ④ Alertを表示
        present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

