//
//  SwiftUI_testApp.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/23.
//

import SwiftUI

@main
struct SwiftUI_testApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
