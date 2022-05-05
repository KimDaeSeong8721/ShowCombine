//
//  TapButton.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI


struct TabButton : View {

    var title : String
    var animation : Namespace.ID
    @Binding var currentTab : String
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                currentTab = title
            }
        } label: {
            
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(currentTab == title ? .white : .black)
                .frame(maxWidth : .infinity)
                .padding(.vertical,8)
                .background(
                
                    ZStack{
                        if currentTab == title {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
        }

    }
}


