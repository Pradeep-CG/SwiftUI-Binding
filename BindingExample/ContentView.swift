//
//  ContentView.swift
//  BindingExample
//
//  Created by Pradeep on 18/06/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rememberMe = false
    var body: some View {
        VStack{
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

struct PushButton: View {
    
    var title:String
    @Binding var isOn:Bool
    
    var onColor = [Color.orange, Color.pink]
    var ofColor = [Color.gray, Color.black]
    
    var body: some View{
        Button(title){
            self.isOn.toggle()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: isOn ? onColor: ofColor), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
