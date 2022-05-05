//
//  ReviewView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI

struct ReviewView: View {
    
    
    init(){
        UINavigationBar.appearance().barTintColor = .white
    //    UINavigationBar.appearance().backgroundColor = .white

    }
    var body: some View {
        NavigationView{
        VStack{
            
            CollectionView()

        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.backgroundColor)
        .navigationTitle("review")
        .navigationBarTitleDisplayMode(.inline)
            
    }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
