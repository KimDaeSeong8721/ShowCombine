//
//  HomeView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedItem : HomeViewModel?
    @State private var sheetKind = 0
    var body: some View {
        
        NavigationView {
            GeometryReader { proxy in
                VStack(spacing : 36){
                    
                    ForEach(HomeViewModel.allCases, id: \.rawValue){ item in
                        HomeCardView(image: item.image, text: item.title)
                            .frame(width: proxy.size.width*0.9, height: proxy.size.height*0.2)
                            .onTapGesture {
                                selectedItem = item
                               // sheetKind = item.rawValue
                                
                            }
                            .sheet(item: $selectedItem) { selectedItem in
                                
                                SheetView(selectedItem: selectedItem)
                               
                            }

                            
                    }
                   
                }.frame(width: proxy.size.width, height: proxy.size.height)
                    .background(Color.backgroundColor)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                
                    
                    
               
            }.ignoresSafeArea()
            
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


extension HomeView {
    
   
}
