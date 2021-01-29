//
//  Fillintheblankview.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/9/20.
//

import SwiftUI


//class blankpassagemodel: ObservableObject {
//    @ObservedObject var viewmodel = FillInTheBlankModel()
//    var toshowEnglish:[String] = []
//    for i in 0..< viewmodel.
//    
//}



struct Fillintheblankview : View {
    @State var nextishidden:Bool = false
    @State var checkishidden:Bool = true
    @State var previshidden:Bool = true
    @State var toshowEnglish:Text = Text("")
    @State var ansnum = 1
    @ObservedObject var viewmodel = FillInTheBlankModel()
    @State var bigstring:String = ""
    
    var body: some View {
        
        
        ScrollView {
            VStack{
                
                Spacer()
                Text($viewmodel.ChineseText[0].wrappedValue)
                    .background(Color.yellow)
                    .padding()
//                Spacer()
//                Text($viewmodel.BlankedText[0].wrappedValue)
//                    .background(Color.blue)
//                    .padding()
//                
//                ForEach (0..<viewmodel.OringinText.count){ i in
//                    Text(viewmodel.OringinText[i] + " " + $viewmodel.Blanked[i].wrappedValue)
//                }
//
                if (toshowEnglish == Text("")){
                    viewmodel.OringinText.reduce(Text(""), {$0 + Text($1) + Text("____")})
                        .background(Color.blue)
                }else{
                    toshowEnglish
                        .background(Color.blue)                }
                
                
                
                Spacer()
                TextField("Please enter your answer \(ansnum)  here", text: $viewmodel.Blanked[ansnum-1])
                                .background(Color.gray)
                                .padding()
                
                

                HStack{
                  
                    Button(action: {
                        
                        toshowEnglish = self.viewmodel.gettoshowEnglish()

                        
                        checkishidden = true
                        nextishidden = false
                        
                        if (ansnum == 2){
                            previshidden = true
                        }
            
                        ansnum -= 1
                    }) {
                        if !previshidden{
                            Text("Previous Question")
                                .background(Color.pink)
                        }
                    }
                    
                    
                    Button(action: {
                        checkishidden = true
                        previshidden = false
                        
                        toshowEnglish = self.viewmodel.gettoshowEnglish()

                        if ansnum == 8 {
                            nextishidden = true
                        }
                        
                        ansnum += 1
                        
                    }) {
                        if !nextishidden{
                            Text("Next Question")
                                .background(Color.pink)
                        }
                    }
                }
                
                Spacer()
                
                VStack{
                    Button(action: {
                        checkishidden.toggle()
                    }) {
                        if checkishidden{
                            Text("Check")
                                .foregroundColor(.black)
                                .background(Color.blue)
                        }else{
                            Text("Unshow")
                                .foregroundColor(.black)
                                .background(Color.blue)
                        }
                        
                    }
                    
                    if (!checkishidden){
                    
                        if ($viewmodel.Blanked[ansnum-1].wrappedValue == $viewmodel.Answers[ansnum-1].wrappedValue){
                            Text($viewmodel.Answers[ansnum-1].wrappedValue)
                                .background(Color.green)
                        }else{
                            Text($viewmodel.Answers[ansnum-1].wrappedValue)
                                .background(Color.red)
                        }
                        
                        
                    }
                    
                }
            }
        }
    }
}

struct Fillintheblankview_Previews: PreviewProvider {
    static var previews: some View {
        Fillintheblankview()
    }
}
