//
//  CategoryHome.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct CategoryHome: View {
  @EnvironmentObject var modelData: ModelData
  
  var body: some View {
    NavigationView {
      List {
        ForEach(modelData.categoris.keys.sorted(), id: \.self) { key in
          Text(key)
        }
      }
      .navigationTitle("Featured")
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
      .environmentObject(ModelData())
  }
}
