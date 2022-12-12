//
//  FriendTableViewCell.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 08.12.2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
