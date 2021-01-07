//
//  SecondPage.swift
//  swiftui-cw-12
//
//  Created by Yousif on 07/01/2021.
//

import SwiftUI

struct SecondPage: View {
    @ObservedObject var env: Env
    
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 40){
                TextField("الاسم", text: $env.name)
                    .disableAutocorrection(true)
                TextField("العمر", text: $env.age)
                TextField("الهاتف", text: $env.phone)
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .multilineTextAlignment(.trailing)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("موافق")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}

//struct SecondPage_Previews: PreviewProvider {
//    @State static var name = ""
//    @State static var age = ""
//    @State static var Phone = ""
//    static var previews: some View {
//        SecondPage(name: $name, age: $age, phone: $Phone)
//    }
//}
