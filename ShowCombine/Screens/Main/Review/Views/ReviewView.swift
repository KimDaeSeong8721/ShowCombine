//
//  ReviewView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        
        VStack{
            CollectionView()

        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.backgroundColor)

    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
