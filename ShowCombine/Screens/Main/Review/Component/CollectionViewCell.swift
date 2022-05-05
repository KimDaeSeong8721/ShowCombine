//
//  CollectionViewCell.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import UIKit
import SwiftUI
class CollectionViewCell: UICollectionViewCell {
//    @AppStorage("areReviewed") private var areReviewed: [Bool] = [Bool](repeating: false, count: 11)
    
    var id : Int = 0
     let label : UILabel = {
        let label = UILabel()
        label.text = ""
        label.backgroundColor = .clear
        label.clipsToBounds = true
       
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.textAlignment = .center
        return label
    }()
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
      
      
       addSubview(label)

      label.layer.cornerRadius = frame.width / 2.0
      label.backgroundColor = UserDefaults.standard.bool(forKey: "areReviewed\(id)") ? .green : .white
  }
    override func layoutSubviews() {
        label.frame = contentView.bounds

    }
    
    public func configure(with model : Word){
        label.text = model.word
        self.id = model.id
        label.backgroundColor = UserDefaults.standard.bool(forKey: "areReviewed\(id)") ? .green : .white
        
    
        //print(UserDefaults.standard.array(forKey: "areReviewed")![id] as! Bool)
     
 
        
}
    
    override var isSelected: Bool {
        didSet {

            if self.isSelected {
                //수정필요 저장된 값 가져올때 이미 isSelected는 false..
                label.backgroundColor = .green
                UserDefaults.standard.set(true, forKey: "areReviewed\(id)")

            } else{
                label.backgroundColor = .white
                UserDefaults.standard.set(false, forKey: "areReviewed\(id)")

            }
        }
    }
}

