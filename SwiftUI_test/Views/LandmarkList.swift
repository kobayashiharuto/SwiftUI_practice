//
//  LandmarkList.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavaritesOnly = false
  
  var filteredLandmarks: [Landmark] {
    landmarks.filter { landmark in
      (!showFavaritesOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationView {
      List(filteredLandmarks) { landmark in
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
    LandmarkList()
  }
}
