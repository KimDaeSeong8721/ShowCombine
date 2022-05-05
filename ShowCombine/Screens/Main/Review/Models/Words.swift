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
                                      Word(id: 9,isReViewed: false, word: "Subscription"),
                                      Word(id: 10,isReViewed: false, word: "receive"),
                                      Word(id: 12,isReViewed: false, word: "request"),
                                      Word(id: 13,isReViewed: false, word: "scan"),
                                      Word(id: 14,isReViewed: false, word: "tryScan"),
                                      Word(id: 15,isReViewed: false, word: "filter"),
                                      Word(id: 16,isReViewed: false, word: "tryFilter"),
                                      Word(id: 17,isReViewed: false, word: "compactMap"),
                                      Word(id: 18,isReViewed: false, word: "Empty"),
                                      Word(id: 19,isReViewed: false, word: "Record"),
                                      Word(id: 20,isReViewed: false, word: "replaceEmpty"),
                                      Word(id: 21,isReViewed: false, word: "collect"),
                                      Word(id: 22,isReViewed: false, word: "ignoreOutput"),
                                      Word(id: 23,isReViewed: false, word: "count"),
                                      Word(id: 24,isReViewed: false, word: "max"),
                                      Word(id: 25,isReViewed: false, word: "tryMax"),
                                      Word(id: 26,isReViewed: false, word: "min"),
                                      Word(id: 27,isReViewed: false, word: "tryMin"),
                                      Word(id: 28,isReViewed: false, word: "contains"),
                                      Word(id: 29,isReViewed: false, word: "tryContains"),
                                      Word(id: 30,isReViewed: false, word: "allSatisfy"),
                                      Word(id: 31,isReViewed: false, word: "drop"),
                                      Word(id: 32,isReViewed: false, word: "dropFirst"),
                                      Word(id: 33,isReViewed: false, word: "TryDrop"),
                                      Word(id: 34,isReViewed: false, word: "append"),
                                      Word(id: 35,isReViewed: false, word: "prepend"),
                                      Word(id: 36,isReViewed: false, word: "prefix"),
                                      Word(id: 37,isReViewed: false, word: "tryPrefix"),
                                      Word(id: 38,isReViewed: false, word: "first"),
                                      Word(id: 39,isReViewed: false, word: "last"),
                                      Word(id: 40,isReViewed: false, word: "tryLast"),
                                      Word(id: 41,isReViewed: false, word: "output"),
                                      Word(id: 42,isReViewed: false, word: "combineLastest"),
                                      Word(id: 43,isReViewed: false, word: "merge"),
                                      Word(id: 44,isReViewed: false, word: "zip"),
                                      Word(id: 45,isReViewed: false, word: "flatMap"),
                                      Word(id: 46,isReViewed: false, word: "switchToLatest"),
                                      Word(id: 47,isReViewed: false, word: "assertNoFailure"),
                                      Word(id: 48,isReViewed: false, word: "catch"),
                                      Word(id: 49,isReViewed: false, word: "retry"),
                                      Word(id: 50,isReViewed: false, word: "measureInterval"),
                                      Word(id: 51,isReViewed: false, word: "debounce"),
                                      Word(id: 52,isReViewed: false, word: "delay"),
                                      Word(id: 53,isReViewed: false, word: "throttle"),
                                      Word(id: 54,isReViewed: false, word: "timeout"),
                                      Word(id: 55,isReViewed: false, word: "encode"),
                                      Word(id: 56,isReViewed: false, word: "decode"),
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
