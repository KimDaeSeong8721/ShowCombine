//
//  CollectionViewCell.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    contentView.layer.cornerRadius = frame.width / 2.0
      contentView.backgroundColor = .white
  }
    
    override var isSelected: Bool {
        didSet {
            // set color according to state
            contentView.backgroundColor = self.isSelected ? .green : .white
        }
    }
}

