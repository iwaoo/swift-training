//
//  ViewController.swift
//  collectionView_section
//
//  Created by 新井岩生 on 2018/05/04.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

let imageList: NSArray = [["image1", "image2"], ["image3", "image4"], ["image5", "image6"], ["image7", "image8"], ["image9", "image10"]]
let titleList: NSArray = ["Group1","Ggroup2","Ggroup3","Ggroup4","Ggroup5",]
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return titleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let data = imageList[section] as! NSArray
        return data.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        let data = imageList[indexPath.section] as! NSArray
        cell.cellImageView?.image = UIImage(named: data[indexPath.row] as! String)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CollectionReusableView", for: indexPath) as? CollectionReusableView else {
            fatalError("Could not find proper header")
        }
        
        if kind == UICollectionElementKindSectionHeader {
            header.sectionLable.text = titleList[indexPath.section] as? String
            return header
        }
        
        return UICollectionReusableView()
    }
    
}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.bounds.size.width/3
        let height = width
        return CGSize(width: width, height: height)
    }
    
    
}
