//
//  Env.swift
//  swiftui-cw-12
//
//  Created by Yousif on 07/01/2021.
//

import SwiftUI

class Env: ObservableObject{
    @Published var name: String = ""
    @Published var age: String = ""
    @Published var phone: String = ""
    @Published var isMentor = false
}
