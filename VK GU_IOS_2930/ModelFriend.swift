//
//  ModelFriend.swift
//  VK GU_IOS_2930
//
//  Created by Роберт on 08.12.2022.
//

import Foundation
import UIKit

struct Friend {
    let image: UIImage?
    let name: String
    let friends: [NewFriend]
}

struct NewFriend {
    let image: UIImage?
    let name: String
}

let newFriend = [
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),
NewFriend(image: UIImage(named: "avatar"), name: "Artem"),

]
