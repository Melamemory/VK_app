//
//  MyGroupsCell.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 21.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

class MyGroupsCell: UITableViewCell {
    
    @IBOutlet weak var myGroupsLabel: UILabel!
    @IBOutlet weak var myGroupsImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
