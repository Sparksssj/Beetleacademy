//
//  StudyView.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/8/20.
//

import SwiftUI

struct Studyview: View {
    
    @State private var iconnames = ["Writing", "Listening", "Test"]
    @State var selection: Int? = nil
    
    var body: some View {
        
        VStack {
            Spacer()
            
            
            NavigationLink(
                destination: Readingview(), tag:1 ,
                selection: $selection){
                
                Button(action: {
                    self.selection = 1
                }) {
                    Mainicons(Imagename: $iconnames[0])
                }
                }
            
            
            
            NavigationLink(
                destination: Text("Listening View"),
                tag:2, selection:$selection
                ){
                
                Button(action: {
                    self.selection = 2
                }) {
                    Mainicons(Imagename: $iconnames[1])
                }
                
            }
            
            NavigationLink(
                destination: Testview(),
                tag:3, selection:$selection
                ){
                
                Button(action: {
                    self.selection = 3
                }) {
                    Mainicons(Imagename: $iconnames[2])
                }
                
            }
            
            Spacer()

           
        }
        
        
    }
}

struct Studyview_Previews: PreviewProvider {
    static var previews: some View {
        Studyview()
    }
}
