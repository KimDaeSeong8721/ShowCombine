//
//  PublisherView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI

struct PublisherView: View {
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
                Text("Publish란?")
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
                Text("protocol")
                    .font(.title)
                .bold()
                .padding(.leading,Constants.paddingValue)
                .padding(.top)
                Spacer()
            }
            
           
            ZStack{
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .foregroundColor(Color.codeViewerGray)
                    .frame(height: UIScreen.main.bounds.height*0.2)
                    .padding(.horizontal,Constants.paddingValue)
                
                Text(card.protocolCode!)
                    .font(.subheadline)
                    .padding(.horizontal,Constants.paddingValue)
            }
            
            HStack {
                Text("만드는 방법")
                    .bold()
                    .font(.title)
                    .padding(.horizontal,Constants.paddingValue)
                    .padding(.top,Constants.paddingValue)
                
                Spacer()
            }
            
            List{
                Text("Just")
                Text("Future")
                Text("Deferred")
                Text("Empty")
                Text("Fail")
                Text("Record")

            }
            .frame(height: UIScreen.main.bounds.height*0.4)
            .padding(.horizontal,15)

            HStack {
                Text("메소드")
                    .bold()
                    .font(.title)
                    .padding(.horizontal,Constants.paddingValue)
                    .padding(.top,Constants.paddingValue)
                
                Spacer()
            }
            
            List{
                Text("sink")
                Text("subscribe")
                Text("assign")

            }
            
            .frame(height: UIScreen.main.bounds.height*0.2)
            .padding(.horizontal,15)
            .padding(.bottom,Constants.paddingValue)
            
        }
        .navigationTitle(card.title)
        .navigationBarTitleDisplayMode(.inline)
        
            
          
    }
        .background(Color.backgroundColor)

    }
} 

//struct PublisherView_Previews: PreviewProvider {
//    static var previews: some View {
//        PublisherView(card: CoreCard.SampleData[0])
//    }
//}
