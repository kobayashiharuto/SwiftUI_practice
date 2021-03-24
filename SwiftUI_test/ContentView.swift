//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130.0)
      
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        
        HStack {
          Text("Joshua Tree National Park")
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
        
        Divider()
        
        Text("About Turtle Rock")
          .font(.subheadline)
        Text("Descriptive text goes here.")
          .font(.subheadline)
      }
      .padding()
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
