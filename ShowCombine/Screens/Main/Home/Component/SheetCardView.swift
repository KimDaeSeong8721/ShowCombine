//
//  SheetCardView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/04.
//

import SwiftUI

struct SheetCardView: View {
    
    var post : Post
    var body: some View {
        
        GeometryReader { proxy in
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                
                VStack{
                    
                    Rectangle()
                        .frame(height: proxy.size.height*0.1)
                        .foregroundColor(Color.titleBackgroundColor)
                    
                    Spacer()
                    
                }
                
                VStack{
                    
                    HStack {
                        Text(post.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top,10)
                            .padding(.leading,10)
                        
                        
                        
                        Spacer()
                        
                    }
                    
                    
                    if let image = post.postImage{
                        Image(image)
                            .resizable()
                            .padding(.leading,70)
                            .padding(.top,100)
                    }
                    
                    Spacer()
                    
                }
                
                
                Text(post.content)
                    .padding()
                
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            
        }
    }
}

//struct SheetCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        SheetCardView(post: post)
//    }
//}
