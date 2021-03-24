//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello!")
      .font(.title)
      .fontWeight(.bold)
      .foregroundColor(Color.red)
      .padding(4.0)
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
