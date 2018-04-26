//
//  ViewController.swift
//  pickerView
//
//  Created by 新井岩生 on 2018/04/26.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerViewContainer: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    let posts = ["Google", "Apple", "Facebook", "Amazon", "Microsoft"]
    
    override func viewDidLoad() {
        pickerView.delegate = self;
        pickerView.dataSource = self;
        
        // ラベルをタッチポイントに
        label.isUserInteractionEnabled = true
        label.tag = 100
        // 背景をタッチポイントに
        backgroundView.isUserInteractionEnabled = true
        backgroundView.tag = 101
        
        pickerViewContainer.isHidden = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        for touch: AnyObject in touches {
            let t: UITouch = touch as! UITouch
            if t.view?.tag == label.tag {
                NSLog("Label touched")
                showBtn(label)
            } else if t.view?.tag == backgroundView.tag {
                NSLog("Label2 touched")
                hideBtn(backgroundView)
            }
        }
    }
    
    func showBtn(_ sender: Any) {
        pickerViewContainer.isHidden = false
    }
    
    @IBAction func hideBtn(_ sender: Any) {
        pickerViewContainer.isHidden = true
    }
}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    
    // 表示する列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // アイテム表示個数を返す
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return posts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 選択時の処理
        print(posts[row])
        label.text = posts[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 表示する文字列を返す
        return posts[row]
        
    }
    
}

