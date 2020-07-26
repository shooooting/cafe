//
//  CafeProvider.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import Foundation

final class CafeProvider {
  var list: [Cafe] = try! JSONDecoder().decode(type: [Cafe].self, from: "CafeList.json")
  
  func toggleFavoriteCafe(at index: Int) {
    list[index].isFavorite.toggle()
  }
  
  func filterList(by titles: [String?]) -> [Cafe] {
    list.filter {
      cafe in
      titles.contains {
        cafe.title.contains( $0 ?? "") }
    }
  }
}
