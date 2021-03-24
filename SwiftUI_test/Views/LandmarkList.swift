//
//  LandmarkList.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    List(landmarks) { landmark in
      LandmarkRow(landmark: landmark)
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
