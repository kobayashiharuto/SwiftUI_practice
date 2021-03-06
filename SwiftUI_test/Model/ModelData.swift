//
//  ModelData.swift
//  SwiftUI_test
//
//  Created by 小林春斗 on 2021/03/25.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
  @Published var landmarks: [Landmark] = load("landmarkData.json")
  @Published var profile = Profile.default
  
  var features: [Landmark] {
    landmarks.filter { $0.isFeatured }
  }
  
  var categoris: [String: [Landmark]]{
    Dictionary(
      grouping: landmarks,
      by: { $0.category.rawValue }
    )
  }
}


func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
  else {
    fatalError("Couldn't find \(filename) in main bundle.")
  }
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
  }
  
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
  }
}
