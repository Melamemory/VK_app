//
//  Group.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 21.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

class Group: NSObject {
    let groupName: String
    let groupAvatar: UIImage?
    let groupDescription: String?
    
    init(name: String) {
        self.groupName = name
        self.groupAvatar = UIImage(named: "earth-icon")
        self.groupDescription = nil
    }
    
    static let groups: [Group] = [
        Group(name: "GeekBrains"),
        Group(name: "TJ"),
        Group(name: "VseMaiki"),
        Group(name: "Anime"),
        Group(name: "Физкек"),
        Group(name: "Stand Up")
    ]
}
