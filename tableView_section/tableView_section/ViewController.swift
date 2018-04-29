//
//  ViewController.swift
//  tableView_section
//
//  Created by 新井岩生 on 2018/04/29.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var pList:NSMutableDictionary = [:]
    var wrap:NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filePath = Bundle.main.path(forResource: "Property List.plist", ofType: nil)
        pList = NSMutableDictionary(contentsOfFile: filePath!)!
        
        wrap = pList.object(forKey: "Wrap") as! NSArray
        
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        print(wrap.count)
        return wrap.count
    }
    
    /**
     セクション毎のタイトルをヘッダーに表示
     */
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = (wrap[section] as! [String:Any])["Title"]! as! String
        return title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows:NSArray = (wrap[section] as! [String:Any])["Row"]! as! NSArray
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.numberOfLines = 0
        
        let wrapItem:NSMutableDictionary = wrap[indexPath.section] as! NSMutableDictionary
        
        let row:NSArray = wrapItem["Row"] as! NSArray
        let rowItem:NSMutableDictionary =  row[indexPath.row] as! NSMutableDictionary
        print(rowItem["text"]!)
        
        cell.textLabel?.text = rowItem["text"]! as? String
        cell.imageView?.image = UIImage(named: rowItem["image"]! as! String)
        
        
        return cell
    }
    
    
}

