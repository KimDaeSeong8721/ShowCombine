//
//  CodeSheetView.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI

struct CodeSheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var currentTab = "Original"
    @Namespace var animation
    var body: some View {
        VStack{
            sheetTopBar
            segmentControl
            
            if currentTab == "Original"{
                
                codeViewer(codeText: """
                           let myNotification = Notification.Name("MyNotification")
                           
                           let center = NotificationCenter.default
                           
                           let observer = center.addObserver(     // center에서 myNotification 감시.
                           forName : myNotification,
                           object : nil,
                           queue : nil){ notification in
                               print("Notification received! ")
                           }
                           
                           center.post(name: myNotification, object : nil) // notification을 center에 보냄
                                   center.removeObserver(observer)  // center에서 감시해제.
                           """)
               
            }else {
                codeViewer(codeText: """
                            let myNotification = Notification.Name("MyNotification")
                            
                            let publisher = NotificationCenter.default.publisher(for: myNotification, object : nil)
                                                                                                           // publisher는 브릿지역할
                            let center = NotificationCenter.default
                            
                            let subscription = publisher.sink { _ in
                                   print("Notification received from a publisher!")
                               }

                            center.post(name : myNotification, object : nil)
                            subscription.cancel()
                            """)
            }
            
            Spacer()
        }
    }
}

struct CodeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CodeSheetView()
    }
}

extension CodeSheetView {
    var sheetTopBar : some View {
        ZStack
        {
            HStack{
                Text("Done")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding()
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Spacer()
            }
            
            Text("코드 보기")
                .font(.headline)
            
        }
    }
    
    var segmentControl : some View {
        HStack(spacing : 0){
            TabButton(title: "Original", animation: animation, currentTab: $currentTab)
            TabButton(title: "Combine", animation: animation, currentTab: $currentTab)
        }
        .background(Color.black.opacity(0.04),in: RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal)
    }
}


struct codeViewer : View {
    
    let codeText : String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.codeViewerGray)
                .frame(height : UIScreen.main.bounds.height*0.5)
                .cornerRadius(Constants.cornerRadius)
                .padding()
            
            ScrollView(.horizontal, showsIndicators: true) {
                Text(codeText)
                .frame(height : UIScreen.main.bounds.height*0.5)
                .padding()
                
            }
            .padding()
        }
    }
}
