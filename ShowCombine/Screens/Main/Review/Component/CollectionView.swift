//
//  CollectionView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI
import UIKit




struct CollectionView: UIViewRepresentable {
   
    var data = [0,1,2,3,4,5,6]
    
    
    func makeUIView(context: Context) -> some UIView {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: CollectionViewLayout())
        collectionView.allowsMultipleSelection = true
        collectionView.dataSource = context.coordinator
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.backgroundColor = UIColor(cgColor: Color.reviewBackground.cgColor!)
         

        return collectionView
    }  
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
     
        private let parent: CollectionView
      //  let cellCount = ROWS * COLS

               init(_ collectionView: CollectionView) {
                   self.parent = collectionView
               }
               
               func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                   Word.sampleData.count
               }
               
               func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                   let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
                   
                   
                    let model = Word.sampleData[indexPath.row]
                   cell.label.text = model.word
                   cell.configure(with : model)
                   return cell
               }
               
               func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                   return CGSize(width: 100, height: 100)
               }
        
//        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        }
        func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
            return (collectionView.indexPathsForSelectedItems?.count ?? 0) < 2
        }
        
    }
}


