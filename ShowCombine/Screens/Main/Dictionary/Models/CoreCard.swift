//
//  Card.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/04.
//

import Foundation



struct CoreCard : Card{
    var image: String
    var title: String
    var subTitle: String
    let content : String
    let protocolCode : String?
    let producingCodes : [String?]
    let method : [String?]
    
}



extension CoreCard {
    
    static let SampleData : [CoreCard] =
    [ CoreCard(image: "publisher",
               title: "Publisher",
               subTitle: "emit Value",
               content: "값을 포함하는 이벤트를 발행하고 방출시킨다. => 값을 주는 애 (생성자)",
               protocolCode: "protocol Publisher { associatedtype Output  associatedtype Failure : Error  func receive<S>(subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input}",
               producingCodes: ["Just","Future","Deffered","Empty","Fail","Record"],
               method: ["sink","subscribe","assign(to:on)"]),
      CoreCard(image: "operator",
                 title: "Operator",
                 subTitle: "manufacture Value",
                 content: "값을 포함하는 이벤트를 발행하고 방출시킨다. => 값을 주는 애 (생성자)",
                 protocolCode: "protocol Publisher { associatedtype Output  associatedtype Failure : Error  func receive<S>(subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input}",
                 producingCodes: ["Just","Future","Deffered","Empty","Fail","Record"],
                 method: ["sink","subscribe","assign(to:on)"]),
      CoreCard(image: "subscriber",
                 title: "Subscriber",
                 subTitle: "input Value",
                 content: "값을 포함하는 이벤트를 발행하고 방출시킨다. => 값을 주는 애 (생성자)",
                 protocolCode: "protocol Publisher { associatedtype Output  associatedtype Failure : Error  func receive<S>(subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input}",
                 producingCodes: ["Just","Future","Deffered","Empty","Fail","Record"],
                 method: ["sink","subscribe","assign(to:on)"])
      
    
    
    
    ]
}
