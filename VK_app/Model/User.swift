//
//  User.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 21.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

class User: NSObject {
    let userName: String
    let avatar: UIImage?
    let photoes: [UIImage?]
    
    init(name: String) {
        self.userName = name
        self.avatar = UIImage(systemName: "person.fill")
        self.photoes = [
            UIImage(systemName: "person.fill"),
            UIImage(systemName: "photo"),
            UIImage(systemName: "person.3.fill")
        ]
    }
}
