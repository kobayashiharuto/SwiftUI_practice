//
//  ProfilesHost.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import SwiftUI

struct ProfilesHost: View {
  @Environment(\.editMode) var editMode
  @EnvironmentObject var modelData: ModelData
  @State private var draftProfile = Profile.default
  
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        HStack {
          Spacer()
          EditButton()
        }
        
        if (editMode?.wrappedValue == .inactive) {
          ProfileSummary(profile: modelData.profile)
        } else {
          ProfileEditor(profile: $draftProfile)
        }
      }
      .padding()
    }
}

struct ProfilesHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfilesHost()
          .environmentObject(ModelData())
    }
}
