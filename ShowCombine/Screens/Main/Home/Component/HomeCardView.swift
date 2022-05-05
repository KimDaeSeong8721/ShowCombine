//
//  HomeCardView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/03.
//

import SwiftUI

struct HomeCardView: View {
    
    let image : String
    let text : String
    var body: some View {
        
        ZStack{
            
            Image(image)
                .resizable()
                .cornerRadius(Constants.cornerRadius)
            
            VStack{
                Spacer()
                HStack{
                    Text(text)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.all,5)
                    Spacer()
                }
            }
            
            
            
        }
}
}
