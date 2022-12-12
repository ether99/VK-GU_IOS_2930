//
//  FriendCollectionViewCell.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 09.12.2022.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var container: UIView!
    
    override func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hadleTap))
        tap.numberOfTapsRequired = 2
        container.addGestureRecognizer(tap)
        
    }
    
    @objc func hadleTap(_ : UIGestureRecognizer) {
        likeControl.islake.toggle()
        
        if likeControl.islake {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
        } else {
            likeControl.likePicture.image = nil
        }
    }
    
    
    
}
