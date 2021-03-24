//
//  LandmarkList.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
  }
}