//
//  LandmarkDetail.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130.0)
      
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        
        HStack {
          Text(landmark.park)
            .font(.subheadline)
          Spacer()
          Text(landmark.state)
            .font(.subheadline)
        }
        
        Divider()
        
        Text("About \(landmark.name)")
          .font(.subheadline)
        Text(landmark.description)
          .font(.subheadline)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: ModelData().landmarks[0])
  }
}
