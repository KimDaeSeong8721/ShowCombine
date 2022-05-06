//
//  NotificationView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI
import Combine

struct NotificationView: View {
    
    @State var isArrived = false
    @State var showSheet = false
    var cancellables = Set<AnyCancellable>()

 

    
    init(){
    }
    var body: some View {

   
            GeometryReader{ proxy in
                VStack(spacing : 50){
                
                Spacer()
                    
                    ZStack{
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .foregroundColor(.white)
                    .frame(width:  proxy.size.width*0.8, height: proxy.size.height*0.5)
                    
                        if isArrived {
                            Text("Notification 도착 완료")
                                .font(.title)
                                .bold()
                        } else {
                            Text("Notication 도착 전")
                                .font(.title3)
                                .bold()
                        }
                    
                    }
                    
            
                
                    Button(action: {
                        if !isArrived {
                            makeNotification()

                        } else{
                            isArrived = false
                        }
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                            .foregroundColor(.white)
                        .frame(width:  proxy.size.width*0.8, height: proxy.size.height*0.1)
                            
                            if isArrived{
                                Text("초기화하기")
                            } else{
                                Text("Notification 보내기")
                                    .font(.title3)
                                    .bold()

                            }
                        }
                    })
                     
                    
              Spacer()
                    
                
            }
            .frame(width: proxy.size.width , height: proxy.size.height)
            .background(Color.backgroundColor)
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "curlybraces")
                            .foregroundColor(.black)
                    }

                }
            }
            .sheet(isPresented: $showSheet) {
                CodeSheetView()
            }
            }
        
      
    }

    func makeNotification(){
        
        let myNotification = Notification.Name("MyNotificatioon")
        let center = NotificationCenter.default
        let publisher = center.publisher(for: myNotification, object: nil)
        let subscription = publisher.sink { _ in
            isArrived = true

        }
      
        center.post(name: myNotification, object: nil)


        subscription.cancel()//
    }


}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
