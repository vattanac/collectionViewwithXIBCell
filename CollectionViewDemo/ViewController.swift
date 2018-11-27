//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Vattanac on 11/26/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customcell", for: indexPath) as! CollectionViewCell
        
        return cell
    }
   
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.bounds.size.width/3 , height:collectionView.bounds.size.width/3 )
//    }

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize =  CGSize(width: collectionView.bounds.size.width/3 , height:collectionView.bounds.size.width/3 )
        
        let xib = UINib(nibName: "CollectionViewCell", bundle: nil)
//        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "customcell")
        collectionView.register(xib, forCellWithReuseIdentifier: "customcell")
        
    }


}

