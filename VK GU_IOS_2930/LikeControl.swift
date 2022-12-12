//
//  LikeControl.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 12.12.2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    
    var islake: Bool = false
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
    }
        
        
       
}
