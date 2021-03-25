//
//  CategoryHome.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct CategoryHome: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showingProfile = false
  
  var body: some View {
    NavigationView {
      List {
        modelData.features[0].image
          .resizable()
          .scaledToFill()
          .frame(height: 200)
          .clipped()
          .listRowInsets(EdgeInsets())
        
        ForEach(modelData.categoris.keys.sorted(), id: \.self) { key in
          CategoryRow(categoryName: key, items: modelData.categoris[key]!)
        }
        .listRowInsets(EdgeInsets())
      }
      .listStyle(InsetListStyle())
      .navigationTitle("Featured")
      .toolbar {
        Button(action: { showingProfile.toggle() }) {
          Image(systemName: "person.crop.circle")
            .accessibilityLabel("User Profile")
        }
      }
      .sheet(isPresented: $showingProfile) {
        ProfilesHost()
          .environmentObject(modelData)
      }
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
      .environmentObject(ModelData())
  }
}
