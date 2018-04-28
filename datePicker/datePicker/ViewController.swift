//
//  ViewController.swift
//  datePicker
//
//  Created by 新井岩生 on 2018/04/28.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var pickerViewContainer: UIView!
    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                showBtn(label)
            } else if t.view?.tag == backgroundView.tag {
                hideBtn(backgroundView)
            }
        }
    }
    
    @IBAction func hideBtn(_ sender: Any) {
        //日付のフォーマットを指定する。
        let format = DateFormatter()
        format.dateFormat = "yyyy/MM/dd HH:mm:ss"
        //日付をStringに変換する
        let sDate = format.string(from: datePicker.date)
        label.text = sDate
        pickerViewContainer.isHidden = true
    }
    func showBtn(_ sender: Any) {
        pickerViewContainer.isHidden = false
    }
}


