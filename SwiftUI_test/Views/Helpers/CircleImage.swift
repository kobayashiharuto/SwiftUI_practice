//
//  CircleImage.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct CircleImage: View {
  var image: Image
  
  var body: some View {
    image
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.gray, lineWidth: 4))
      .shadow(radius: 7)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("turtlerock"))
  }
}
