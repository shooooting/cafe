//
//  MainCollectionViewCell.swift
//  CafeSpotMakeMe
//
//  Created by ㅇ오ㅇ on 2020/07/26.
//  Copyright © 2020 shooooting. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
  
  static let identifier = "MainCollectionViewCell"
  
  let imgV = UIImageView()
  let title = UILabel()
  let subTitle = UILabel()
  let heart = UIButton()
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setUI()
    setConstraint()
  }
  
  func setUI() {
    
    [imgV, title, subTitle, heart].forEach { contentView.addSubview($0) }
    
    heart.setImage(UIImage(systemName: "heart"), for: .normal)
    heart.tintColor = .white
    
    imgV.layer.cornerRadius = 10
    imgV.clipsToBounds = true
    
    imgV.backgroundColor = .red
    title.backgroundColor = .blue
    subTitle.backgroundColor = .purple
  }
  
  func setConstraint() {
    [imgV, title, subTitle, heart].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    NSLayoutConstraint.activate([
      imgV.topAnchor.constraint(equalTo: contentView.topAnchor),
      imgV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      imgV.widthAnchor.constraint(equalTo: contentView.widthAnchor),
      imgV.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
      
      title.topAnchor.constraint(equalTo: imgV.bottomAnchor),
      title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      title.widthAnchor.constraint(equalTo: contentView.widthAnchor),
      title.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.15),
      
      subTitle.topAnchor.constraint(equalTo: title.bottomAnchor),
      subTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      subTitle.widthAnchor.constraint(equalTo: contentView.widthAnchor),
      subTitle.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.15),
      
      heart.bottomAnchor.constraint(equalTo: imgV.bottomAnchor, constant: -10),
      heart.trailingAnchor.constraint(equalTo: imgV.trailingAnchor, constant: -10),
      heart.widthAnchor.constraint(equalToConstant: 20),
      heart.heightAnchor.constraint(equalToConstant: 20)
    ])
  }

}
