//
//  DicCardView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/04.
//

import SwiftUI

struct DicCardView: View {
   
    let card : Card
 
    
    var body: some View {
        
        GeometryReader { proxy in
            
            VStack{
                Image(card.image)
                    .resizable()
                    .frame(width: proxy.size.width ,height : proxy.size.height*0.7)
                
                HStack {
                    Text(card.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.leading)
                    Spacer()
                }
                
                Divider()
            
                HStack {
                    Text(card.subTitle)
                        .font(.subheadline)
                        .padding(.horizontal)
                        .padding(.bottom)
                    Spacer()
                }
            }.frame(width: proxy.size.width, height: proxy.size.height)
                .cornerRadius(Constants.cornerRadius)

                .background(.white)
            
            
            
        }
        
    }
}

//struct DicCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        DicCardView()
//    }
//}
