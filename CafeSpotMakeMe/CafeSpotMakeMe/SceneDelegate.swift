//
//  SceneDelegate.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    let mainVC = UINavigationController(rootViewController: MainViewController())
    let mapVC = UINavigationController(rootViewController: MapViewController())
    let tabBar = UITabBarController()
    
    mainVC.tabBarItem = UITabBarItem(title: "home", image: UIImage(systemName: "house"), tag: 0)
    mapVC.tabBarItem = UITabBarItem(title: "map", image: UIImage(systemName: "map"), tag: 1)
    
    tabBar.viewControllers = [mainVC, mapVC]
    
    window = UIWindow(windowScene: windowScene)
    window?.backgroundColor = .systemBackground

    window?.rootViewController = tabBar
    window?.makeKeyAndVisible()
  }

}

