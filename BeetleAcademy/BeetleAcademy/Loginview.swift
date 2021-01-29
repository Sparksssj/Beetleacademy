//
//  ContentView.swift
//  BeetleAcademy
//
//  Created by 宋世骄 on 12/6/20.
//

import SwiftUI

struct ContentView: View {
    @State private var Username:String = ""
    @State private var Password:String = ""
    @State private var movetonextview = false
    var body: some View {
        
        VStack {
            
            Spacer()
            Text("Welcome to Beetle Academy!")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            HStack{
                Image(systemName: "person.fill")
                TextField("Username", text: $Username)

            }.padding()
            HStack{
                Image(systemName: "key.fill")
                SecureField("Password", text: $Password)
            }.padding()
            
            Spacer()
            Button(action: {
                
                // Don't need to type username&password for convinience
                
                //if Username == "Sparks" && Password == "Tester"{
                    movetonextview = true
               // }
            }) {
                Text("Sign in")
                    .foregroundColor(.black)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.all, 15)
                    .padding(.horizontal
                    ,70)
                    .background(Color.blue)
                    .cornerRadius(50)


            }
            Spacer()
            Spacer()
        }.navigate(to: Maincontentview(), when: $movetonextview)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
