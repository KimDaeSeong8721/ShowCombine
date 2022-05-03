//
//  DictionaryView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/02.
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
       
        GeometryReader { proxy in
            VStack{
                
                
                
            }.frame(width: proxy.size.width, height: proxy.size.height)
             .background(Color.backgroundColor)
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
