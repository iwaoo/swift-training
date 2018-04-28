//
//  ViewController.swift
//  tableView_no_section
//
//  Created by 新井岩生 on 2018/04/28.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var item1:NSArray = []
    var item2:NSArray = []
    var item3:NSArray = []
    var item4:NSArray = []
    var pList:NSMutableDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let filePath = Bundle.main.path(forResource: "Property List.plist", ofType: nil)
        pList = NSMutableDictionary(contentsOfFile: filePath!)!
        
        item1 = pList.object(forKey: "item1") as! NSArray
        item2 = pList.object(forKey: "item2") as! NSArray
        item3 = pList.object(forKey: "item3") as! NSArray
        item4 = pList.object(forKey: "item4") as! NSArray
        
    }
    
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        switch indexPath.row {
        case 0:
            cell.textLabel!.text = item1[1] as? String
            cell.imageView?.image = UIImage(named: item1[0] as! String)
        case 1:
            cell.textLabel!.text = item2[1] as? String
            cell.imageView?.image = UIImage(named: item2[0] as! String)
        case 2:
            cell.textLabel!.text = item3[1] as? String
            cell.imageView?.image = UIImage(named: item3[0] as! String)
        case 3:
            cell.textLabel!.text = item4[1] as? String
            cell.imageView?.image = UIImage(named: item4[0] as! String)
        default:
            break
        }
        
        return cell
    }
    
    
}


