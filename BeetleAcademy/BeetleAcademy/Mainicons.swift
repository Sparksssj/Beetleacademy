//
//  Mainicons.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/8/20.
//

import SwiftUI

struct Mainicons: View {
    @Binding var Imagename:String

    var body: some View {
       
        
        Image(Imagename)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.all,20)
        

        
    }
}

struct Mainicons_Previews: PreviewProvider {
    static var previews: some View {
        Mainicons(Imagename: Binding.constant("Writing"))
    }
}
