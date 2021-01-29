//
//  ViewModels.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/20/20.
//

import Foundation
import SwiftUI

var samplertr: [String: Array<String>] = [
    "ChineseText" : ["考试制度有一些很明显的不足。一些“考试型”的考生虽然没什么真才实学，但在依然可以考得很好。反而有些考生却常常因为紧张而导致考得不好。有些老师和学员只研究那些考试考的东西，使得教育变得片面。"],
    "OringinText" : ["Exams have clear" ,"."  ,"can often",".", "some" ,"simply because of", ". Some teachers and" ,  "that", ",thus"],
    "BlankedText" :["Exams have clear __ __ __ __ __ __ __ __ __ __ . __ __ __ __ __ __ __ __ __ __  can often __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ . __ __ __ __ __ __ __ __ , some __ __ __ __ __ __ __ __  __ __ __ __ __ __ __ __ __ __ __ __ __ __  simply because of __ __ __ __ . Some teachers and __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __  that__ __ __ __ __ __ __ __ __ __ , thus __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ __ . "],
    "Answers" : [
        "drawbacks",
        "Test-wise candidates",
        "perform well on exams without having good underlying knowledge or skills",
        "On the other hand",
        "test-takers perform poorly in exams",
        "anxiety",
        "learners focus only on those aspects of the curriculum",
        "are likely to be tested",
        "narrowing the educational experience for all"
    ]
]

struct WanXing: Codable {
    let OringinText: [String]
    let Answers: [String]
    let ChineseText: [String]
    let toshowEnglish:[String]
    let BlankedText:[String]

}

class FillInTheBlankModel:ObservableObject {
    @Published var OringinText = ["None"]
    @Published var Blanked = ["None"]
    @Published var Answers = ["None"]
    @Published var ChineseText = ["None"]
    @Published var toshowEnglish:[String] = []
    @Published var BlankedText = ["None"]
    

    
    init() {
        getmessage()
        Blanked = [String](repeating: "", count: Answers.count)
    }
    
    
    
    func getmessage() {
        OringinText = samplertr["OringinText"]!
        Answers = samplertr["Answers"]!
        ChineseText = samplertr["ChineseText"]!
        BlankedText = samplertr["BlankedText"]!
    }
    
    
    func gettoshowEnglish() -> Text {
        toshowEnglish = []
        for i in 0..<OringinText.count {
            toshowEnglish.append(OringinText[i])
            toshowEnglish.append(Blanked[i])
        }
        return toshowEnglish.reduce(Text(""), {$0 + Text($1) + Text("__")})
    }
}
