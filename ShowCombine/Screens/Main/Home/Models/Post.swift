//
//  Post.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/04.
//

import SwiftUI


struct Post: Identifiable, Hashable {
    var id = UUID().uuidString
    var postImage : String?
    var title : String
    var content : String
    
    
    
    static let sampleData : [Post] =  [
        Post(postImage: "combine", title: "What",content: "시스템 레벨에서 비동기 API들을 하나의 프로세스로 통합하는 새로운 프레임워크이다."),
    Post(title: "Why",content: "프로젝트가 커질수록 사용방법이 다른 여러 비동기 API를 사용하기 때문에 재생산하기 어렵고, 코드의 흐름을 추적하기 어렵고 궁극적으로 보수하기가 어렵다."),
    Post(title: "Where",content: "Combine은 하나의 통합적이고 선언적인 비동기 API이므로 비동기 작업을 진행할때 사용한다."),
    Post(title: "When",content: "App architecture에 영향을 주는 프레임워크가 아니므로\n 코드영역에서 Networking, Timers, NotificationCenter,  Delegates, Clousure Callbacks, GCD 등의 비동기 API를 클린코드로 작성하고 싶을 때 사용하면 된다.\n그러나 만약 SwiftUI와 함께 사용한다면 MVVM 아키텍처에 유리하다.")
    
    ]
}
