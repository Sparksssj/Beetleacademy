//
//  Testview.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/24/20.
//

import SwiftUI

struct Testview: View {
    
    @State private var iconnames = ["newquiz", "allquizzes"]
    @State var selection: Int? = nil
    
    var body: some View {
        
        NavigationLink(
            destination: Newquizview(), tag:1 ,
            selection: $selection){
            
            Button(action: {
                self.selection = 1
            }) {
                Mainicons(Imagename: $iconnames[0])
            }
            }
        
        NavigationLink(
            destination: Text("Allquizzes"), tag:2 ,
            selection: $selection){
            
            Button(action: {
                self.selection = 2
            }) {
                Mainicons(Imagename: $iconnames[1])
            }
            }
        
        
        
    }
}

struct Testview_Previews: PreviewProvider {
    static var previews: some View {
        Testview()
    }
}
