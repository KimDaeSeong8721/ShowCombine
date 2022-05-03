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
    var body: some View {
        
        
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
                            .cornerRadius(10)
                            .padding()
                
                
                VStack {
                    
                    ZStack {
                        
                        // title
                        
                        VStack{
                            Rectangle()
                                .frame(height : 45)
                                .cornerRadius(10)
                            
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
}

