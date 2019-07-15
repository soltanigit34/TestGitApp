//
//  customCollectionViewCell.swift
//  TestGitApp
//
//  Created by Admin on 7/15/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class customCollectionViewCell: UICollectionViewCell {
    
    
    var myImageView = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect.init(x: 10, y: 10 , width: self.frame.size.width - 10, height: self.frame.size.height - 10)
        
        addSubview(myImageView)
        
    }
    
}
