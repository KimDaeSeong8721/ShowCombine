//
//  HomeViewModel.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/03.
//

//extension Int: Identifiable {
//    public var id: Int { self }
//}


enum HomeViewModel : Int, CaseIterable, Identifiable {
    case async
    case combine
    case how

    var id: Int {
        switch self {
        case .async : return 0
        case .combine : return 1
        case .how : return 2
        }
    }
    
    var image: String {
        switch self {
        case .async : return "image1"
        case .combine : return "image2"
        case .how : return "image3"
        }
    }
    
    
    var title: String {
        switch self {
        case .async : return "비동기 프로그래밍이란"
        case .combine : return "컴바인이란"
        case .how : return "How"
        }
    }
    var content : String{
        switch self {
        case .async : return "비동기 프로그래밍이란 다른 작업을 기다리지 않고 바로 자신의 작업을 진행하는 프로그래밍이다.\n\n 비동기 API 핵심은  background에서 돌고 있는 함수가 완료되는 순간을 인지하는 것이고\n\n 비동기 API는 대표적으로 3가지 callback,Notification Center, Delegate패턴"
        case .combine : return "시스템 레벨에서 비동기 API들을 하나의 프로세스로 통합하는 새로운 프레임워크"
            
        case .how : return ""
        }
    }
}
