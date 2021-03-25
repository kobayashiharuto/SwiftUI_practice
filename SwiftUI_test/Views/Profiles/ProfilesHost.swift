//
//  ProfilesHost.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct ProfilesHost: View {
  @State private var draftProfile = Profile.default
  
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        ProfileSummary(profile: draftProfile)
      }
      .padding()
    }
}

struct ProfilesHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfilesHost()
    }
}
