//
//  ViewController.swift
//  TestGitApp
//
//  Created by Admin on 7/14/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import VegaScrollFlowLayout
import AnimatedCollectionViewLayout

import SquareFlowLayout

extension ViewController: SquareFlowLayoutDelegate {
    func shouldExpandItem(at indexPath: IndexPath) -> Bool {
        return self.layoutValues[indexPath.row] == .expanded
        
    }
}

class ViewController: UIViewController {

    enum CellType {
        case normal
        case expanded
    }
    
    private var photos: [Int : UIImage] = [:]
    
    private let layoutValues: [CellType] = [
        .expanded, .normal, .normal,
        .normal, .normal, .normal,
//        .normal, .normal, .normal
//        .normal, .expanded, .normal,
//        .expanded, .normal, .normal,
//        .normal, .expanded, .normal,
//        .normal, .normal, .normal,
//        .normal, .normal, .expanded,
//        .normal, .normal, .normal,
//        .normal, .expanded, .normal,
//        .normal, .normal, .normal,
//        .expanded, .normal, .normal,
//        .normal, .normal, .normal,
//        .normal, .expanded, .normal,
//        .normal, .normal, .normal,
//        .normal, .normal, .normal,
//        .expanded, .normal, .normal,
//        .normal, .normal, .normal,
//        .normal, .normal, .expanded,
//        .normal, .expanded, .normal,
//        .normal, .normal, .normal,
//        .normal, .normal, .normal,
//        .expanded, .normal, .normal,
//        .normal, .expanded, .normal,
//        .normal, .normal, .normal,
//        .normal, .normal, .expanded,
//        .expanded, .normal, .normal
    ]
    
 

    @IBOutlet weak var collectionView: UICollectionView!
    var dataArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout = SquareFlowLayout()
        flowLayout.flowDelegate = self
        self.collectionView.collectionViewLayout = flowLayout
        
       
//        let layout = VegaScrollFlowLayout()
//        collectionView.collectionViewLayout = layout
//        layout.minimumLineSpacing = 20
//        layout.itemSize = CGSize(width: collectionView.frame.width, height: 87)
//        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        
//        let layout = AnimatedCollectionViewLayout()
//        layout.animator = ParallaxAttributesAnimator()
//        collectionView.collectionViewLayout = layout
        
        
        
        self.view.backgroundColor = .orange
        collectionView.register(customCollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
        collectionView.delegate = self
        collectionView.dataSource  = self
        collectionView.backgroundColor = .cyan
    
        self.view.addSubview(collectionView)
     
        dataArray = [#imageLiteral(resourceName: "ios_developer") ,#imageLiteral(resourceName: "stop") ,  #imageLiteral(resourceName: "icon"), #imageLiteral(resourceName: "ios_developer") , #imageLiteral(resourceName: "icon") , #imageLiteral(resourceName: "icon") ]
        
        
    }
}




extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! customCollectionViewCell
        cell.myImageView.image = dataArray[indexPath.item]
        cell.backgroundColor  = .yellow
        return cell
    }
    
    
}

//extension ViewController : UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let collectionViewWidth = collectionView.bounds.width
//        return CGSize.init(width: collectionViewWidth / 4 - 8 , height: collectionViewWidth / 2  - 20 )
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 20
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 8
//    }
//}
