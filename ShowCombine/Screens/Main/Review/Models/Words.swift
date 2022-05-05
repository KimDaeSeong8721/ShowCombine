//
//  Words.swift
//  ShowCombine
//
//  Created by DaeSeong on 2022/05/05.
//

import SwiftUI


struct Word {
    //    @AppStorage("areReViewed") var areReViewed : [Bool] = [Bool](repeating: false, count: 10)
    var id : Int
    @State var isReViewed = false
    @State var word = ""
    
    static let sampleData : [Word] = [Word(id: 0,isReViewed: false, word: "Publisgher"),
                                      Word(id: 1,isReViewed: false, word: "Operator"),
                                      Word(id: 2,isReViewed: false, word: "Subscriber"),
                                      Word(id: 3,isReViewed: false, word: "Just"),
                                      Word(id: 4,isReViewed: false, word: "Future"),
                                      Word(id: 5,isReViewed: false, word: "Deferred"),
                                      Word(id: 6,isReViewed: false, word: "Empty"),
                                      Word(id: 7,isReViewed: false, word: "Record"),
                                      Word(id: 8,isReViewed: false, word: "Fail"),
                                      Word(id: 9,isReViewed: false, word: "Publisgher"),
                                      Word(id: 10,isReViewed: false, word: "Operator"),
                                      Word(id: 12,isReViewed: false, word: "Subscriber"),
                                      Word(id: 13,isReViewed: false, word: "Just"),
                                      Word(id: 14,isReViewed: false, word: "Future"),
                                      Word(id: 15,isReViewed: false, word: "Deferred"),
                                      Word(id: 16,isReViewed: false, word: "Empty"),
                                      Word(id: 17,isReViewed: false, word: "Record"),
                                      Word(id: 18,isReViewed: false, word: "Fail"),
                                      Word(id: 19,isReViewed: false, word: "Publisgher"),
                                      Word(id: 20,isReViewed: false, word: "Operator"),
                                      Word(id: 21,isReViewed: false, word: "Subscriber"),
                                      Word(id: 22,isReViewed: false, word: "Just"),
                                      Word(id: 23,isReViewed: false, word: "Future"),
                                      Word(id: 24,isReViewed: false, word: "Deferred"),
                                      Word(id: 25,isReViewed: false, word: "Empty"),
                                      Word(id: 26,isReViewed: false, word: "Record"),
                                      Word(id: 27,isReViewed: false, word: "Fail"),
                                      Word(id: 28,isReViewed: false, word: "Publisgher"),
                                      Word(id: 29,isReViewed: false, word: "Operator"),
                                      Word(id: 30,isReViewed: false, word: "Subscriber"),
                                      Word(id: 31,isReViewed: false, word: "Just"),
                                      Word(id: 32,isReViewed: false, word: "Future"),
                                      Word(id: 33,isReViewed: false, word: "Deferred"),
                                      Word(id: 34,isReViewed: false, word: "Empty"),
                                      Word(id: 35,isReViewed: false, word: "Record"),
                                      Word(id: 36,isReViewed: false, word: "Fail"),
                                      Word(id: 37,isReViewed: false, word: "Publisgher"),
                                      Word(id: 38,isReViewed: false, word: "Operator"),
                                      Word(id: 39,isReViewed: false, word: "Subscriber"),
                                      Word(id: 40,isReViewed: false, word: "Just"),
                                      Word(id: 41,isReViewed: false, word: "Future"),
                                      Word(id: 42,isReViewed: false, word: "Deferred"),
                                      Word(id: 43,isReViewed: false, word: "Empty"),
                                      Word(id: 44,isReViewed: false, word: "Record"),
                                      Word(id: 45,isReViewed: false, word: "Fail"),
                                      Word(id: 46,isReViewed: false, word: "Publisgher"),
                                      Word(id: 47,isReViewed: false, word: "Operator"),
                                      Word(id: 48,isReViewed: false, word: "Subscriber"),
                                      Word(id: 49,isReViewed: false, word: "Just"),
                                      Word(id: 50,isReViewed: false, word: "Future"),
                                      Word(id: 51,isReViewed: false, word: "Deferred"),
                                      Word(id: 52,isReViewed: false, word: "Empty"),
                                      Word(id: 53,isReViewed: false, word: "Record"),
                                      Word(id: 54,isReViewed: false, word: "Fail"),
                                      Word(id: 55,isReViewed: false, word: "Publisgher"),
                                      Word(id: 56,isReViewed: false, word: "Operator"),
//                                      Word(id: ,isReViewed: false, word: "Subscriber"),
//                                      Word(id: 10,isReViewed: false, word: "Just"),
//                                      Word(id: 10,isReViewed: false, word: "Future"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Publisgher"),
//                                      Word(id: 10,isReViewed: false, word: "Operator"),
//                                      Word(id: 10,isReViewed: false, word: "Subscriber"),
//                                      Word(id: 10,isReViewed: false, word: "Just"),
//                                      Word(id: 10,isReViewed: false, word: "Future"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Publisgher"),
//                                      Word(id: 10,isReViewed: false, word: "Operator"),
//                                      Word(id: 10,isReViewed: false, word: "Subscriber"),
//                                      Word(id: 10,isReViewed: false, word: "Just"),
//                                      Word(id: 10,isReViewed: false, word: "Future"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Publisgher"),
//                                      Word(id: 10,isReViewed: false, word: "Operator"),
//                                      Word(id: 10,isReViewed: false, word: "Subscriber"),
//                                      Word(id: 10,isReViewed: false, word: "Just"),
//                                      Word(id: 10,isReViewed: false, word: "Future"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Fail"),
//                                      Word(id: 10,isReViewed: false, word: "Deferred"),
//                                      Word(id: 10,isReViewed: false, word: "Empty"),
//                                      Word(id: 10,isReViewed: false, word: "Record"),
//                                      Word(id: 10,isReViewed: false, word: "Fail")
                                      
                                      
                                      //Word(isReViewed: false, word: "subscribe")
                                      
                                      
                                      //                                      "Operator","Subscriber",
                                      //                            "Just","Future","Deferred","Empty","Fail","Record",
                                      //                            "sink","subscribe","assign(to:on:)",
                                      //                            "map","tryMap","flatMap","filter","tryFilter","compactMap",
                                      //                            "collect","ignoreOutput","reduce"]
                                      
    ]
}
