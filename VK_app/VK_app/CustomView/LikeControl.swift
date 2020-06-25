//
//  LikeControl.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 25.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

class LikeControl: UIControl {
    private var isLiked = false
    var likesCounter: UILabel = {
        let likesCounter = UILabel()
        likesCounter.text = "0"
        likesCounter.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        likesCounter.numberOfLines = 1
        likesCounter.translatesAutoresizingMaskIntoConstraints = false
        return likesCounter
    }()
    
    var heartImage: UIImageView = {
        let heart = UIImageView()
        heart.image = UIImage(systemName: "heart.fill")
        heart.tintColor = UIColor.red.withAlphaComponent(0.4)
        heart.translatesAutoresizingMaskIntoConstraints = false
        return heart
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    private func configureView() {
        layer.backgroundColor = UIColor.clear.cgColor
        
        addSubview(heartImage)
        
        NSLayoutConstraint.activate([
            heartImage.widthAnchor.constraint(equalToConstant: 30),    // frame.size.width
            heartImage.heightAnchor.constraint(equalToConstant: frame.size.height),
            heartImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            heartImage.topAnchor.constraint(equalTo: topAnchor),
            heartImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        addSubview(likesCounter)
        
        NSLayoutConstraint.activate([
            likesCounter.leadingAnchor.constraint(equalTo: heartImage.trailingAnchor, constant: 8),
            likesCounter.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            likesCounter.topAnchor.constraint(equalTo: topAnchor),
            likesCounter.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        heartImage.isUserInteractionEnabled = false
        likesCounter.isUserInteractionEnabled = false
        
        addTarget(self, action: #selector(updateLikesCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func updateLikesCount() {
        isLiked = !isLiked
        likesCounter.text = isLiked ? "1" : "0"
        heartImage.tintColor = isLiked ? UIColor.red : UIColor.red.withAlphaComponent(0.4)
    }
    
}
