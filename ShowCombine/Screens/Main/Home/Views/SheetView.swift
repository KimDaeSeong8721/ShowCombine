//
//  SheetView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/03.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    var selectedItem : HomeViewModel
    
    @State var currentIndex : Int = 0 // for slider
    @State var posts: [Post] = []
    var body: some View {
        
        switch selectedItem {
        case .async:
            asyncSheetView
        case .combine:
            combineSheetView
        case .how:
            combineSheetView
        }
        
        
    }
}


extension SheetView {
        var asyncSheetView : some View {
            VStack{
                
                ZStack
                {
                    HStack{
                        Text("Done")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding()
                            .onTapGesture {
                                presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                    }
                    
                    Text(selectedItem.title)
                        .font(.headline)
                    
                }
                
                ZStack
                {
                    Image(selectedItem.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width)
                        .ignoresSafeArea()
                    
                    Rectangle()
                        .background(.black)
                        .frame(width: UIScreen.main.bounds.width)
                        .ignoresSafeArea()
                        .opacity(0.3)
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(Constants.cornerRadius)
                        .padding()
                    
                    
                    VStack {
                        
                        ZStack {
                            
                            // title
                            
                            VStack{
                                Rectangle()
                                    .frame(height : 45)
                                    .foregroundColor(Color.titleBackgroundColor)
                                    .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: Constants.cornerRadius))
                                
                                Spacer()
                            }.padding()
                            
                            
                            
                            VStack{
                                HStack {
                                    Text("비동기 프로그래밍이란")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.top,10)
                                        .padding(.leading,10)
                                    
                                    
                                    Spacer()
                                    
                                }.padding()
                                
                                // contents
                                Text(selectedItem.content)
                                    .padding()
                                
                                Image("async")
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                Spacer()
                            }
                        }
      
                    }
                    
                }
            }
        }
    
    
    var combineSheetView : some View {
    
        VStack{
            
            // 상단 바
            ZStack
            {
                HStack{
                    Text("Done")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Spacer()
                }
                
                Text(selectedItem.title)
                    .font(.headline)
                
            }
            
            ZStack
            {
                Image(selectedItem.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                
                Rectangle()
                    .background(.black)
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                    .opacity(0.3)
                
                
                 
                VStack(){
                SnapCarousel(spacing: 20,index: $currentIndex, items: posts) { post in
                    
                    GeometryReader{ proxy in
                        
                        let size = proxy.size
                        
//                        Image(post.postImage)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width : size.width)
//                            .cornerRadius(Constants.cornerRadius)
                        
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(.white)
                            
                            
                            VStack{
                                SheetCardView(post: post)
                                
                               
                                Spacer()
                            }
                                
                        }.frame(width: size.width)
                            .cornerRadius(Constants.cornerRadius)
                    }
                    .padding(.vertical,40)

                    
                
                    
                    
                }.frame(maxWidth : .infinity, maxHeight: UIScreen.main.bounds.height * 0.7, alignment: .leading)
                
                    // Indicator
                    HStack(spacing: 10){
                        
                        ForEach(posts.indices, id: \.self) { index in
                            
                            Circle()
                            //    .fill(Color.black.opacity(currentIndex == index ? 1 : 0.1))
                                .fill(currentIndex == index ? Color.black : Color.white)
                                .frame(width: 10, height: 10)
                                .scaleEffect(currentIndex == index ? 1.0 : 0.6)
                                .animation( .spring(), value: currentIndex == index)
                        }
                    }
                    
                
                    
                }
              
                
                
              
                
                
//                SheetCardView()
//                    .background(.white)
//                    .cornerRadius(Constants.cornerRadius)
//                    .frame(height : UIScreen.main.bounds.height*0.4)
//                    .padding()
                
            }
            .onAppear {
               
                for post in Post.sampleData{
                    posts.append(post)
                   

                }
            }
        }
    }
}
