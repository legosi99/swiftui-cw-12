//
//  ContentView.swift
//  swiftui-cw-12
//
//  Created by Yousif on 07/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainView()
                .environmentObject(Env())
        }
    }
}

struct MainView: View {
    @EnvironmentObject var env: Env
    
    var body: some View {
        VStack{
            Text("مرحبا بك في الكويت تبرمج")
                .padding(.bottom, 50)
                .foregroundColor(.blue)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button(action: {
                env.isMentor.toggle()
            }, label: {
                Text("ادخل بيانتك")
                    .padding()
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
            }).sheet(isPresented: $env.isMentor){
                SecondPage(env: self.env)
            }
            if env.name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text("الاسم \(env.name)")
                        Text("العمر \(env.age)")
                        Text("الهاتف \(env.phone)")
                    }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
