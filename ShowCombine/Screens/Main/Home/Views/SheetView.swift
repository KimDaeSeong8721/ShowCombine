//
//  SheetView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/03.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - properties
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
            combineSheetView  // 기능 구현하기
        }
        
        
    }
}


extension SheetView {
        var asyncSheetView : some View {
            VStack{
                
                sheetTopBar
                
                ZStack
                {
                    sheetBackground

                    VStack {
                        
                        ZStack {
                            
                            // title
                            
                            VStack{
                                Rectangle()
                                    .frame(height : 45)
                                    .foregroundColor(Color.titleBackgroundColor)
                                    .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: Constants.cornerRadius))
                                
                                Spacer()
                            }.padding(.all,Constants.paddingValue)
                            
                            
                            
                            VStack{
                                HStack {
                                    Text("비동기 프로그래밍이란")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.top,25)
                                        .padding(.leading,Constants.paddingValue)
                                    
                                    
                                    Spacer()
                                    
                                }.padding()
                                
                                // contents
                                Text(selectedItem.content)
                                    .padding(.all,Constants.paddingValue)
                                
                                Image("async")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.all,Constants.paddingValue)
                                    .padding(.leading,25)
                                Spacer()
                            }
                        }
      
                    }
                    
                }
            }
        }
    
    
    var combineSheetView : some View {
    
        VStack{
            sheetTopBar
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
                    SnapCarousel(spacing: Constants.paddingValue,
                             index: $currentIndex,
                             items: posts) { post in
                    
                    GeometryReader{ proxy in
                        
                        let size = proxy.size
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


                }.frame(maxWidth : .infinity,
                        maxHeight: UIScreen.main.bounds.height * 0.7,
                        alignment: .leading)
                
                    // Indicator
                    
                    indicaterView
                    
                
                    
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
    
    var sheetTopBar : some View {
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
    }
    
    var sheetBackground : some View {
        ZStack{
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
                .padding(.all,30)
        }
    }
    
    var indicaterView: some View {
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
}
