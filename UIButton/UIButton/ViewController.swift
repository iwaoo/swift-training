//
//  ViewController.swift
//  UIButton
//
//  Created by 新井岩生 on 2018/04/24.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    static let image_list: [String] = ["image1", "image2", "image3", "image4", "image5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonWasTapped(_ sender: UIButton) {
        let num = Int(arc4random() % UInt32(ViewController.image_list.count))
        self.backgroundImageView.image = UIImage(named:ViewController.image_list[num])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

