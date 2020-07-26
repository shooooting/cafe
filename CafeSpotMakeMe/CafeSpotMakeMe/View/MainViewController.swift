//
//  ViewController.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  let searchBar = UISearchController(searchResultsController: nil)
  let layout = UICollectionViewFlowLayout()
  lazy var collectionV = UICollectionView(
    frame: .zero, collectionViewLayout: layout
  )

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUI()
    setNavi()
    setConstraint()
  }
  
  func setNavi() {
    let titleLabel = UILabel()
    titleLabel.textAlignment = .center
    titleLabel.attributedText = NSAttributedString(
      string: "CafeSpot",
      attributes: [
        NSAttributedString.Key.font: UIFont(name: "Zapfino", size: 16)!,
        NSAttributedString.Key.kern: 5
      ]
    )
    navigationItem.titleView = titleLabel
    
    searchBar.obscuresBackgroundDuringPresentation = false
    searchBar.searchBar.placeholder = "검색..."
    navigationItem.searchController = searchBar
  }
  
  func setUI() {
    setLayout()
    [collectionV].forEach {
      view.addSubview($0)
    }
    collectionV.backgroundColor = .white
    collectionV.dataSource = self
    collectionV.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
  }
  
  func setLayout() {
    let width = view.frame.width / 2 - 10
    let height = view.frame.width / 2 + 10
    layout.minimumInteritemSpacing = 5
    layout.minimumLineSpacing = 5
    layout.itemSize = CGSize(width: width, height: height)
    layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
  }
  
  func setConstraint() {
    let guide = view.safeAreaLayoutGuide
    [collectionV].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    NSLayoutConstraint.activate([
      collectionV.topAnchor.constraint(equalTo: guide.topAnchor),
      collectionV.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
      collectionV.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
      collectionV.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
    ])
  }
}

extension MainViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as! MainCollectionViewCell
    return cell
  }
}

