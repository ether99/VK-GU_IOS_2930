//
//  avatarUIView.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 12.12.2022.
//

import UIKit

class avatarUIView: UIView {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var shadowView: UIView!
    
    
    
    
    var shadowColor = UIColor.black
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 7
        shadowView.layer.shadowOpacity = 0.8
        
    }
    
    override func layoutSubviews() {
        avatarImageView.layer.cornerRadius = bounds.height/2
        shadowView.layer.cornerRadius = bounds.height/2
    }
    
    
}
