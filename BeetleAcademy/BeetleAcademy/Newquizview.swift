//
//  Newquizview.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/24/20.
//

import SwiftUI

struct Newquizview: View {
    @State var testnum:Int = 5
    @State var test1:Array<String> = []
    @State var test2:Array<String> = []
    let words = ["This", "is", "an", "example"]
    let count = 1...10
    var body: some View {
        
        ScrollView {
            words.reduce(Text(""), { $0 + Text($1) + Text(" ")} )
        }
        
    }
    
}

struct Newquizview_Previews: PreviewProvider {
    static var previews: some View {
        Newquizview()
    }
}
