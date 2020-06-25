//
//  User.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 21.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

struct User {
    let userName: String
    let photos: [UIImage]
    
    var avatar: UIImage? {
        return photos.first
    }
    
    static let friends: [User] = [
        User(userName: "Alex Smith", photos: [UIImage(named: "darthvader")!, UIImage(systemName: "photo")!, UIImage(systemName: "person.3.fill")!]),
        User(userName: "John Wood", photos: [UIImage(named:  "foxy")!, UIImage(systemName: "photo")!, UIImage(systemName: "person.2")!]),
        User(userName: "Harry Potter", photos: [UIImage(named: "devil")!, UIImage(systemName: "heart.fill")!]),
        User(userName: "Ronald Weesley", photos: [UIImage(named: "capam")!, UIImage(systemName: "heart")!, UIImage(systemName: "person.3.fill")!]),
        User(userName: "Jared Leto", photos: [UIImage(systemName: "person.fill")!, UIImage(systemName: "photo.fill")!])
    ]
}
