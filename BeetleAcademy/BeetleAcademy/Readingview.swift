//
//  Readingview.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/9/20.
//

import SwiftUI

struct Readingview: View {
    
    
    @State private var iconnames = ["miaoshaxiezuo", "wangqichakan", "tiankong"]
    @State var selection: Int? = nil
    
    
    var body: some View {
        VStack {
            Spacer()
            
            
            NavigationLink(
                destination: Text("Miaosha"), tag:1 ,
                selection: $selection){
                
                Button(action: {
                    self.selection = 1
                }) {
                    Mainicons(Imagename: $iconnames[0])
                }
                }
            
            
            
            NavigationLink(
                destination: Text("Wangqichakan"),
                tag:2, selection:$selection
                ){
                
                Button(action: {
                    self.selection = 2
                }) {
                    Mainicons(Imagename: $iconnames[1])
                }
                
            }
            
            NavigationLink(
                destination: Fillintheblankview(),
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

struct Readingview_Previews: PreviewProvider {
    static var previews: some View {
        Readingview()
    }
}
