//
//  Cafe.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import Foundation

struct Cafe: Codable, Equatable {
  let title: String
  let description: String
  let location: Location
  var isFavorite: Bool
  
  struct Location: Codable, Equatable {
    let address: String
    let lat: Double
    let lng: Double
  }
  
  static func ==(lhs: Self, rhs: Self) -> Bool {
    lhs.title == rhs.title &&
      lhs.location == rhs.location
  }
}
