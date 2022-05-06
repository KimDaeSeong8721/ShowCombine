//
//  Card.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/04.
//

import Foundation



struct AsyncCard : Card{
    var image : String
    var title : String
    var subTitle : String
    
    let traditionalCode : String
    let CombineCode : String
    
}



extension AsyncCard {
    
    static let SampleData : [AsyncCard] =
    [ AsyncCard(image: "notificationCenter",
                title: "NotificationCenter",
                subTitle: "broadcast of info",
                traditionalCode: "",
                CombineCode: ""),
      AsyncCard(image: "timers",
                title: "Timers",
                subTitle: "fire after a certain time",
                traditionalCode: "",
                CombineCode: ""),
      AsyncCard(image: "networking",
                title: "Networking",
                subTitle: "create net connection",
                traditionalCode: "",
                CombineCode: "")
     
      
      
      
    ]
}
