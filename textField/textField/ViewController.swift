//
//  ViewController.swift
//  textField
//
//  Created by 新井岩生 on 2018/04/26.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.delegate = self
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        textView.text = "User Name: \(userNameField.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNameField.resignFirstResponder()
    }
    
    
}

extension ViewController : UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // 文字数最大を決める.
        let maxLength: Int = 10
        let userNameFieldStr = userNameField.text!
        // 入力済みの文字と入力された文字を合わせて取得.
        var str = userNameFieldStr + string
        
        // 文字数がmaxLength以下ならtrueを返す.
        if str.unicodeScalars.count  >  maxLength {
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let str = userNameField.text!
        if str.isEmpty {// 未入力の時エンターキーは非活性
            return false
        }
        textField.resignFirstResponder()
        return true
    }
    
}

