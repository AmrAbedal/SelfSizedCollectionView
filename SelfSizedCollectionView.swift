//
//  SelfSizedCollectionView.swift
//  BigDeal
//
//  Created by Amr AbdelWahab on 1/26/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import UIKit

class SelfSizedCollectionView: UICollectionView {
    
    private lazy var heightConstrains: NSLayoutConstraint = {
        let heightConstraints =  NSLayoutConstraint.init(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 200)
        heightConstraints.isActive = true
        return heightConstraints
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addConstraint(heightConstrains)
    }
    
    override var contentSize: CGSize {
        didSet {
            heightConstrains.constant = contentSize.height * zoomScale
        }
    }
}
