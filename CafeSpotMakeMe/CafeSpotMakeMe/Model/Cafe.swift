//
//  Cafe.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import Foundation

struct Cafe: Codable {
  let title: String
  let description: String
  let location: Location
  let isFavorite: Bool
  
  struct Location: Codable {
    let address: String
    let lat: Double
    let lng: Double
  }
}
