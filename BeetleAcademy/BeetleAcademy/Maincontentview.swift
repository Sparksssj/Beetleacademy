//
//  Maincontentview.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/8/20.
//

import SwiftUI

struct Maincontentview: View {

    var body: some View {
        
        
        
        TabView {
                
                Studyview()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Studying")
                }
                Communityview()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Community")
                }
                Accountview()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Account")
                }
            }
       
    }
}

struct Maincontentview_Previews: PreviewProvider {
    static var previews: some View {
        Maincontentview()
    }
}
