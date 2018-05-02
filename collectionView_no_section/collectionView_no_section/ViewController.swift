//
//  ViewController.swift
//  collectionView_no_section
//
//  Created by 新井岩生 on 2018/05/02.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageList: NSArray = ["image1", "image2", "image3", "image4", "image5", "image6", "image6", "image8", "image9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row] as! String)
        return cell
    }
    
}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.bounds.size.width/4
        print(collectionView.bounds.size.width)
        let height = width
        return CGSize(width: width, height: height)
    }
    
}

