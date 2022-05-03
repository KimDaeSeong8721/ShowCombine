//
//  MainTabView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/03.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0

    init(){
        UITabBar.appearance().backgroundColor = .white
    }
   
    var body: some View {
        TabView(selection: $selectedIndex) {
            
          
                HomeView()
                    .tabItem {
                            Image(systemName: "house")
                            Text("home")
                    }
                .tag(0)
            
            DictionaryView()
                .tabItem {
                        Image(systemName: "text.book.closed")
                        Text("Dictionary")
                }
                .tag(1)
            ReviewView()
                .tabItem {
                        Image(systemName: "bookmark")
                        Text("Review")

                }
                
                .tag(2)
          
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
