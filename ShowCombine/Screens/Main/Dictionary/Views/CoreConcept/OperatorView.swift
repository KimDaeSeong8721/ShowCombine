//
//  OperatorView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI

struct OperatorView: View {
    
    let card : CoreCard
    
    init(card : CoreCard){
        self.card = card
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().showsVerticalScrollIndicator = false
        
    }
    var body: some View {
        ScrollView{
        VStack{
            
            Image(card.image)
                .resizable()
                .cornerRadius(Constants.paddingValue)
                .frame(height: UIScreen.main.bounds.height*0.4)
                .padding(.horizontal, Constants.paddingValue)
                .padding(.top)
            
            HStack {
                Text("Operator란?")
                    .font(.title)
                .bold()
                .padding(.leading,Constants.paddingValue)
                .padding(.top)
                Spacer()
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .foregroundColor(.white)
                    .frame(height: UIScreen.main.bounds.height*0.15)
                    .padding(.horizontal,Constants.paddingValue)
                
                Text(card.content)
                    .font(.subheadline)
                    .padding(.horizontal,Constants.paddingValue)
            }
            
            Divider()
                .padding(.top,Constants.paddingValue)
                .padding(.horizontal,Constants.paddingValue)


            HStack {
                Text("종류")
                    .bold()
                    .font(.title)
                    .padding(.horizontal,Constants.paddingValue)
                    .padding(.top,Constants.paddingValue)
                
                Spacer()
            }
            
            List{
                Section {
                    Text("map")
                    Text("tryMap")
                    Text("flatMap")
                } header: {
                    Text("Mapping")
                }

                Section {
                    Text("filter")
                    Text("tryFilter")
                    Text("compactMap")
                } header: {
                    Text("Filtering")
                }
                
                Section {
                    Text("collect")
                    Text("ignoreOutput")
                    Text("reduce")
                } header: {
                    Text("Reducing")
                }
            }
            
            .frame(height: UIScreen.main.bounds.height*0.7)
            .padding(.horizontal,15)
            .padding(.bottom,Constants.paddingValue)
            
        }
        .navigationTitle(card.title)
        .navigationBarTitleDisplayMode(.inline)
        
            
          
    }
        .background(Color.backgroundColor)
    }
}

//struct OperatorView_Previews: PreviewProvider {
//    static var previews: some View {
//        OperatorView()
//    }
//}
