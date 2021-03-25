//
//  Profile.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import Foundation

struct Profile {
  var username: String
  var prefersNotifications = true
  var seasonalPhoto = Seasons.winter
  var goalDate = Date()
  
  static let `default` = Profile(username: "g_kumar")
  
  enum Seasons: String, CaseIterable, Identifiable {
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "☃️"
    
    var id: String { self.rawValue }
  }
  
}
