//
//  DictionaryView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI

struct DictionaryView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            GeometryReader { proxy in
                VStack{
                    
                    ScrollView{
                        HStack {
                            Text("Core Concept")
                                .font(.title)
                                .bold()
                                .padding()
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            // lazyhstack 쓰면 레이아웃이 내려가네 왜지?
                            LazyHStack{
                                
                                ForEach(0..<3){ index in
                                    DicCardView(card: CoreCard.SampleData[index])
                                        .frame(width: proxy.size.width*0.5, height: proxy.size.height*0.45)
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                }
                                
                              
                               
                            }
                            
                        }
                        
                        Divider().padding(.top)
                            .padding(.leading)
                        HStack {
                            Text("Async API")
                                .font(.title)
                                .bold()
                                .padding()
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            // lazyhstack 쓰면 레이아웃이 내려가네 왜지?
                            
                            LazyHStack{
                                ForEach(0..<3){ index in
                                    DicCardView(card: AsyncCard.SampleData[index])
                                        .frame(width: proxy.size.width*0.5, height: proxy.size.height*0.45)
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                }
                            }
                            
                        }
                        
                        
                        
                        Spacer()
                    }
                }.frame(width: proxy.size.width, height: proxy.size.height)
                    .background(Color.backgroundColor)
                    .navigationTitle("Dictionary")
                    .navigationBarTitleDisplayMode(.inline)
                
                
                
            }
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}



